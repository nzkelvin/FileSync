.class Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType$1;
.super Ljava/lang/Object;
.source "RESRefineOptionsBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
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
    .line 196
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType$1;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType$1;->this$0:Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->onRowClick()V

    .line 199
    return-void
.end method
