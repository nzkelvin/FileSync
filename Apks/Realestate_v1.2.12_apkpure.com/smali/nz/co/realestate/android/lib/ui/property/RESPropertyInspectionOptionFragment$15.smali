.class Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$15;
.super Ljava/lang/Object;
.source "RESPropertyInspectionOptionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->onPhotoLongClick(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    .prologue
    .line 384
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$15;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 386
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 387
    return-void
.end method
