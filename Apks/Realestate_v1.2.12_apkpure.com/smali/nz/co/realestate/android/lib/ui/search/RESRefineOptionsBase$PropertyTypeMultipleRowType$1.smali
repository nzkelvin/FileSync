.class Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$1;
.super Ljava/lang/Object;
.source "RESRefineOptionsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->onRowClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

.field final synthetic val$changed:[Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;[Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

    .prologue
    .line 304
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$1;->this$1:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$1;->val$changed:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$1;->val$changed:[Ljava/lang/Boolean;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p2

    .line 307
    return-void
.end method
