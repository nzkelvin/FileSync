.class public Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceThread;
.super Ljava/lang/Thread;
.source "JSAPreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteSharedPreferenceThread"
.end annotation


# instance fields
.field private final mRunnable:Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;F)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 207
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    invoke-direct {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceThread;->mRunnable:Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 211
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    invoke-direct {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceThread;->mRunnable:Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 215
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    invoke-direct {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceThread;->mRunnable:Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 219
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    invoke-direct {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceThread;->mRunnable:Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 203
    new-instance v0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    invoke-direct {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceThread;->mRunnable:Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    .line 204
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceThread;->mRunnable:Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->run()V

    .line 224
    return-void
.end method
