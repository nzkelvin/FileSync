.class Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface$1;
.super Ljava/lang/Object;
.source "JSALocationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;->setHasPanorama(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;Z)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;

    .prologue
    .line 431
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface$1;->this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;

    iput-boolean p2, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface$1;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 433
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface$1;->this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;->access$200(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;)Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;

    move-result-object v1

    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface$1;->this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;->access$000(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;)D

    move-result-wide v2

    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface$1;->this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;->access$100(Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface;)D

    move-result-wide v4

    iget-boolean v6, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$StreetViewPanoramaJavascriptInterface$1;->val$value:Z

    invoke-interface/range {v1 .. v6}, Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;->onStreetViewPanoramaComplete(DDZ)V

    .line 434
    return-void
.end method
