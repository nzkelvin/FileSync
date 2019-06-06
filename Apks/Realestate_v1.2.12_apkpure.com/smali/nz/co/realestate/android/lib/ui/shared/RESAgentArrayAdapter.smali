.class public final Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;
.source "RESAgentArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;",
        "Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;>;"
    const-class v0, Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;

    sget v1, Lnz/co/realestate/android/lib/R$layout;->agent_details_row:I

    invoke-direct {p0, v0, p1, v1, p2}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;ILjava/util/List;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected bridge synthetic updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;

    check-cast p2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter;->updateRow(Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;)V

    return-void
.end method

.method protected updateRow(Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;)V
    .locals 1
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;
    .param p2, "agent"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;

    .prologue
    .line 19
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;->access$000(Lnz/co/realestate/android/lib/ui/shared/RESAgentArrayAdapter$RowWrapper;)Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->setAgent(Lnz/co/realestate/android/lib/eo/server/object/RESListing$Agent;)V

    .line 20
    return-void
.end method
