.class Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$12;
.super Ljava/lang/Object;
.source "RESPropertyInspectionOptionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->onNoteLongClick(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    .prologue
    .line 292
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$12;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    iput p2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$12;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 294
    if-nez p2, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$12;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    iget v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$12;->val$index:I

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$900(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;I)V

    .line 296
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 297
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$12;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    iget v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$12;->val$index:I

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->access$1000(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;I)V

    goto :goto_0
.end method
