.class Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface$2;
.super Ljava/lang/Object;
.source "JSALocationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->setStreetViewCamera(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;

.field final synthetic val$boundCameraAngle:D


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;D)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;

    .prologue
    .line 538
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface$2;->this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;

    iput-wide p2, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface$2;->val$boundCameraAngle:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 540
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface$2;->this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->access$500(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;)Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;

    move-result-object v1

    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface$2;->this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->access$300(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;)D

    move-result-wide v2

    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface$2;->this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;->access$400(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface;)D

    move-result-wide v4

    iget-wide v6, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewCameraAngleJavascriptInterface$2;->val$boundCameraAngle:D

    invoke-interface/range {v1 .. v7}, Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewCameraAngleListener;->onStreetViewCameraAngleComplete(DDD)V

    .line 541
    return-void
.end method
