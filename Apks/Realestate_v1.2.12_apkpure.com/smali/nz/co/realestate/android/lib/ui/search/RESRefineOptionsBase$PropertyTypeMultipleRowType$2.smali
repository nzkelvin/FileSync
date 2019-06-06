.class Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$2;
.super Ljava/lang/Object;
.source "RESRefineOptionsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$initial:[Z


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;[Z[Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

    .prologue
    .line 309
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$2;->this$1:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$2;->val$initial:[Z

    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$2;->val$changed:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 311
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$2;->val$initial:[Z

    array-length v2, v2

    new-array v1, v2, [Z

    .line 312
    .local v1, "selected":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$2;->val$changed:[Ljava/lang/Boolean;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$2;->val$initial:[Z

    aget-boolean v2, v2, v0

    :goto_1
    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$2;->val$changed:[Ljava/lang/Boolean;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    .line 313
    :cond_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType$2;->this$1:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;

    invoke-virtual {v2, v1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$PropertyTypeMultipleRowType;->onRowValuesSelected([Z)V

    .line 314
    return-void
.end method
