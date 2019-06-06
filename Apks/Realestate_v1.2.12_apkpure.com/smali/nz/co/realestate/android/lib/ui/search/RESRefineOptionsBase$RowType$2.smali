.class Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType$2;
.super Ljava/lang/Object;
.source "RESRefineOptionsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->onRowClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;

    .prologue
    .line 207
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType$2;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 209
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType$2;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->getRowTypeItems()Ljava/util/List;

    move-result-object v0

    .line 210
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType$2;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->setValue(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType$2;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;

    invoke-virtual {v1, p2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->onRowValueSelected(I)V

    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 213
    return-void
.end method
