.class Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$3;
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


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    .prologue
    .line 165
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$3;->this$0:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 167
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 168
    return-void
.end method
