.class Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$2;
.super Ljava/lang/Object;
.source "RESAgentDetails.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;->onContactClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

.field final synthetic val$phoneFormat:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    .prologue
    .line 149
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$2;->this$0:Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$2;->val$phoneFormat:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$2;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/shared/RESAgentDetails$2;->val$phoneFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
