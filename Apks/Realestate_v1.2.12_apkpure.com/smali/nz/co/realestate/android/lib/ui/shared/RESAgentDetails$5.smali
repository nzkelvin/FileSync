.class Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$5;
.super Ljava/lang/Object;
.source "RESAgentDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->onContactClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    .prologue
    .line 156
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$5;->this$0:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$5;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$5;->this$0:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$5;->val$items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->access$100(Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;Ljava/lang/String;)V

    .line 159
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 160
    return-void
.end method
