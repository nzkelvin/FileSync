.class public Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;
.super Ljava/lang/Object;
.source "JSAPreferenceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveSharedPreferenceRunnable"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 237
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;->mPrefs:Landroid/content/SharedPreferences;

    .line 238
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;->mKey:Ljava/lang/String;

    .line 239
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 243
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$RemoveSharedPreferenceRunnable;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    return-void
.end method
