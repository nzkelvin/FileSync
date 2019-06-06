.class Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$4;
.super Ljava/lang/Object;
.source "RESMyPropertyListFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->onListItemLongClick(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;

.field final synthetic val$listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;

    .prologue
    .line 125
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$4;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$4;->val$listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$4;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase$4;->val$listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;->access$200(Lnz/co/realestate/android/lib/ui/myproperty/RESMyPropertyListFragmentBase;Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V

    .line 128
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 129
    return-void
.end method
