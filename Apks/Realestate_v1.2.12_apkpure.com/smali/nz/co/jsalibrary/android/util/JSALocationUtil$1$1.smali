.class Lnz/co/jsalibrary/android/util/JSALocationUtil$1$1;
.super Ljava/lang/Object;
.source "JSALocationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSALocationUtil$1;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$1;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/util/JSALocationUtil$1;I)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/util/JSALocationUtil$1;

    .prologue
    .line 390
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1$1;->this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$1;

    iput p2, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1$1;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 392
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1$1;->this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$1;

    iget-object v1, v0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1;->val$listener:Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;

    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1$1;->this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$1;

    iget-wide v2, v0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1;->val$latitude:D

    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1$1;->this$0:Lnz/co/jsalibrary/android/util/JSALocationUtil$1;

    iget-wide v4, v0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1;->val$longitude:D

    iget v6, p0, Lnz/co/jsalibrary/android/util/JSALocationUtil$1$1;->val$errorCode:I

    invoke-interface/range {v1 .. v6}, Lnz/co/jsalibrary/android/util/JSALocationUtil$OnStreetViewPanoramaListener;->onStreetViewPanoramaError(DDI)V

    .line 393
    return-void
.end method
