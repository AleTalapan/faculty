#include<iostream>
using namespace std;
int i,j=1,k,m,n,a[100],b[100],st[100],l;
void divizori(int n){
for(i=2;i<=n/2;i++)
    if(n%i==0){
       a[j]=i;
       b[a[j]]=j;
       j++;
    }
    j--;
}
int succesor(int k){
if(st[k]<a[j-m+k]){
    i++;
    st[k]=a[i];
    return 1;
}
return 0;
}
void bac(int k){
st[k]=st[k-1];
while(succesor(k))
    if(k==m){
        for(l=1;l<=k;l++)
                cout<<st[l]<<" ";
            cout<<endl;
    }
    else bac(k+1);
i=b[st[k]];
}
int main(){
cout<<"n=";cin>>n;
divizori(n);
do{
    cout<<"m=";cin>>m;
}while(m<1||m>j);
st[1]=a[1];
i=1;
bac(2);
return 0;
}
