.class public Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceThread;
.super Ljava/lang/Thread;
.source "JSAPreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveSharedPreferenceThread"
.end annotation


# instance fields
.field private final mRunnable:Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 256
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;

    invoke-direct {v0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceThread;->mRunnable:Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;

    .line 257
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceThread;->mRunnable:Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;->run()V

    .line 261
    return-void
.end method
