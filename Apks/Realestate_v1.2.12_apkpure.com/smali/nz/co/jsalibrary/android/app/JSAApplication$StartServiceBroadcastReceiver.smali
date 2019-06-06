.class public final Lnz/co/jsalibrary/android/app/JSAApplication$StartServiceBroadcastReceiver;
.super Ljava/lang/Object;
.source "JSAApplication.java"

# interfaces
.implements Lnz/co/jsalibrary/android/broadcast/JSABroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "StartServiceBroadcastReceiver"
.end annotation


# instance fields
.field private final mCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnz/co/jsalibrary/android/app/JSAApplication;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/app/JSAApplication;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/app/JSAApplication;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;>;"
    iput-object p1, p0, Lnz/co/jsalibrary/android/app/JSAApplication$StartServiceBroadcastReceiver;->this$0:Lnz/co/jsalibrary/android/app/JSAApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p2, p0, Lnz/co/jsalibrary/android/app/JSAApplication$StartServiceBroadcastReceiver;->mCls:Ljava/lang/Class;

    .line 627
    return-void
.end method


# virtual methods
.method public onReceiveBroadcast(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 630
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication$StartServiceBroadcastReceiver;->this$0:Lnz/co/jsalibrary/android/app/JSAApplication;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/app/JSAApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAApplication$StartServiceBroadcastReceiver;->mCls:Ljava/lang/Class;

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/background/JSABackgroundJobIntentService;->startService(Landroid/content/Context;Ljava/lang/Class;)V

    .line 631
    return-void
.end method
