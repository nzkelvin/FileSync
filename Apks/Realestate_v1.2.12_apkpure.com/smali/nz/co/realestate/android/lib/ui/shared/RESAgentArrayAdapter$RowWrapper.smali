.class public Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;
.source "RESAgentArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowWrapper"
.end annotation


# instance fields
.field private mAgentDetails:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;-><init>(Landroid/view/View;)V

    .line 27
    sget v0, Lnz/co/realestate/android/lib/R$id;->agent_details:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;->mAgentDetails:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;)Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;->mAgentDetails:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    return-object v0
.end method
