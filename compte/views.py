from django.shortcuts import render,redirect
from django.contrib.auth import authenticate,login,logout
from compte.forms import UserForm
from .models import Compte
from .filters import CompteFiltre

from materiel.models import Materiel
from typemateriel.models import TypeMateriel

from direction.models import Direction
from categorie.models import Categorie
from django.contrib.auth.decorators import login_required

from django.db.models import Count
from django.db.models import Q
from django.core.paginator import Paginator




#protection de la vue


# Create your views here.

# Create your views here.
@login_required(login_url = 'connexion')
def inscription(request):
  form = UserForm()
  if request.method =='POST' :
    form = UserForm(request.POST)
    if form.is_valid():
      form.save()
      return redirect('compte')
  context = {'form':form}
  return render(request,'compte/inscription.html',context)


def connexion(request):
  error =''
  if request.method =='POST':
    username = request.POST.get('username')
    password = request.POST.get('password')
    user = authenticate (request,username=username,password=password)
    if user is not None :
      
      #reponse.set_cookie('v_Ref_Direction',v_Ref_Direction)
      
      login(request,user)
      if user.Profil =='Administrateur':
       return redirect('administrateur')
      elif user.Profil =='Utilisateur':
        return redirect('utilisateur')
      else :
        return redirect('maintenancier')
    else:
      
      error ='Nom utilisateur ou Mot de passe incorrect'
  context = {'error':error}
  return render(request,'compte/connexion.html',context)


@login_required(login_url = 'connexion')
def administrateur(request):
#------------------------------

#direction = Direction.objects.get(id=pk)  

# materieldir = direction.materiel_set.all()

#-----------------------------------
  direction = Direction.objects.all().order_by('LibDirection')
  cptdirection = direction.count()

  cabinet = Direction.objects.filter(RefCategorie__LibCategorie = 'Cabinet ministériel')
  cptcabinet = cabinet.count()

  dc = Direction.objects.filter(RefCategorie__LibCategorie = 'Direction et service rattachés')
  cptdc = dc.count()

  dr = Direction.objects.filter(RefCategorie__LibCategorie = 'Direction régionale')
  cptdr = dr.count()

  dd = Direction.objects.filter(RefCategorie__LibCategorie = 'Direction départementale')
  cptdd = dd.count()

  materiel = Materiel.objects.all() 
  cptmateriel = materiel.count()

  mo = Materiel.objects.filter(RefTypeMateriel__LibTypeMateriel = 'Ordinateur')
  cptmo=mo.count()
  mok = Materiel.objects.filter(RefTypeMateriel__LibTypeMateriel = 'Ordinateur',Statut ='OK')
  cptmok = mok.count()
  mnok = Materiel.objects.filter(RefTypeMateriel__LibTypeMateriel = 'Ordinateur',Statut ='NOK')
  cptmnok = mnok.count()

  mi = Materiel.objects.filter(RefTypeMateriel__LibTypeMateriel = 'Imprimante')
  cptmi=mi.count()
  miok = Materiel.objects.filter(RefTypeMateriel__LibTypeMateriel = 'Imprimante',Statut ='OK')
  cptmiok = miok.count()
  minok = Materiel.objects.filter(RefTypeMateriel__LibTypeMateriel = 'Imprimante',Statut ='NOK')
  cptminok = minok.count()  

  me = Materiel.objects.filter(RefTypeMateriel__LibTypeMateriel = 'Ecran')
  cptme=me.count()
  meok = Materiel.objects.filter(RefTypeMateriel__LibTypeMateriel = 'Ecran',Statut ='OK')
  cptmeok = meok.count()
  menok = Materiel.objects.filter(RefTypeMateriel__LibTypeMateriel = 'Ecran',Statut ='NOK')
  cptmenok = menok.count() 

  ma = Materiel.objects.filter().exclude(RefTypeMateriel__LibTypeMateriel = 'Ecran').exclude(RefTypeMateriel__LibTypeMateriel = 'Imprimante').exclude(RefTypeMateriel__LibTypeMateriel = 'Ordinateur')
  cptma=ma.count()
  maok = Materiel.objects.filter(Statut ='OK').exclude(RefTypeMateriel__LibTypeMateriel = 'Ecran').exclude(RefTypeMateriel__LibTypeMateriel = 'Imprimante').exclude(RefTypeMateriel__LibTypeMateriel = 'Ordinateur')
  cptmaok = maok.count()
  manok = Materiel.objects.filter(Statut ='NOK').exclude(RefTypeMateriel__LibTypeMateriel = 'Ecran').exclude(RefTypeMateriel__LibTypeMateriel = 'Imprimante').exclude(RefTypeMateriel__LibTypeMateriel = 'Ordinateur')
  cptmanok = manok.count()

  #-----------------------------------------------------------------------------------

  directions_with_counts = Direction.objects.annotate(
    total_employes=Count('materiel__id', distinct=True),
    
    total_ordinateursOK=Count('materiel__id', filter=Q(materiel__RefTypeMateriel__LibTypeMateriel='Ordinateur') & Q(materiel__Statut='OK')),
    total_imprimanteOK=Count('materiel__id', filter=Q(materiel__RefTypeMateriel__LibTypeMateriel='Imprimante') & Q(materiel__Statut='OK')),
    total_photocopieuseOK=Count('materiel__id', filter=Q(materiel__RefTypeMateriel__LibTypeMateriel='Photocopieur') & Q(materiel__Statut='OK')),
    total_videoprojecteurOK=Count('materiel__id', filter=Q(materiel__RefTypeMateriel__LibTypeMateriel='Video projecteur') & Q(materiel__Statut='OK'))
  )

  # Paginer les données pour afficher 10 éléments par page
  paginator = Paginator(directions_with_counts, 10)
  page_number = request.GET.get('page')
  page_obj = paginator.get_page(page_number)


  #---------------------------------------------------------------------------------
  



  context = {'totdirection':cptdirection,'totcabinet':cptcabinet,'totdc':cptdc,'totdr':cptdr,'totdd':cptdd,'totmateriel':cptmateriel,'totmo':cptmo,'totmok':cptmok,'totmnok':cptmnok,'totmi':cptmi,'totmiok':cptmiok,'totminok':cptminok,'totme':cptme,'totmeok':cptmeok,'totmenok':cptmenok,'totma':cptma,'totmaok':cptmaok,'totmanok':cptmanok,'list_direct_ordi':directions_with_counts,'page_obj': page_obj}

 
  
  return render(request,'compte/tdb_administrateur.html',context)


@login_required(login_url = 'connexion')
def utilisateur(request):
  return render(request,'compte/tdb_utilisateur.html')

def maintenancier(request):
  return render(request,'compte/tdb_maintenancier.html')


@login_required(login_url = 'connexion')
def deconnexion(request):
  logout(request)
  return redirect('connexion')


@login_required(login_url = 'connexion')
def Liste_compte(request):
  comptes = Compte.objects.all() 
  myFilter =CompteFiltre(request.GET, queryset=comptes)
  comptes = myFilter.qs
  context ={'myFilter':myFilter,'compte': comptes}
  return render(request,'compte/comptes.html',context)


@login_required(login_url = 'connexion')
def reinitialiser_compte(request,pk):
  compte = Compte.objects.get(id=pk)
  form = UserForm(instance=compte)
  if request.method =='POST':
    form = UserForm(request.POST,instance=compte)
    if form.is_valid():
      form.save()
      return redirect('/compte/')
  context = {'form':form}
  return render(request,'compte/reinitialiser_compte.html',context)


@login_required(login_url = 'connexion')
def supprimer_compte(request,pk):
  compte = Compte.objects.get(id=pk)  
  if request.method =='POST':
    compte.delete()
    return redirect('/compte/')
  context = {'item':compte}
  return render(request,'compte/supprimer_compte.html',context)

