.class public abstract Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;
.super Ljava/lang/Object;
.source "JSAModelProxy.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAICompositeEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/event/JSAICompositeEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

.field protected final mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/deprecated/JSAModel;)V
    .locals 1
    .param p1, "model"    # Lnz/co/jsalibrary/android/deprecated/JSAModel;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    .line 38
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;)V
    .locals 1
    .param p1, "proxy"    # Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    .line 44
    return-void
.end method


# virtual methods
.method protected final dispatchEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->dispatchEvent(Ljava/lang/String;)Z

    .line 53
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->dispatchEvent(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected final dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 61
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 63
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final getBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 233
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    .line 234
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected final getBooleanSharedPreference(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 228
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getBooleanSharedPreference(Ljava/lang/String;Z)Z

    move-result v0

    .line 229
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getBooleanSharedPreference(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected final getCachedBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 247
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getCachedBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getCachedBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected final getCachedBooleanSharedPreference(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 242
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getCachedBooleanSharedPreference(Ljava/lang/String;Z)Z

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getCachedBooleanSharedPreference(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected final getCachedFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .prologue
    .line 275
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getCachedFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    .line 276
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getCachedFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method protected final getCachedFloatSharedPreference(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 270
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getCachedFloatSharedPreference(Ljava/lang/String;F)F

    move-result v0

    .line 271
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getCachedFloatSharedPreference(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method protected final getCachedIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getCachedIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getCachedIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method protected final getCachedIntSharedPreference(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getCachedIntSharedPreference(Ljava/lang/String;I)I

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getCachedIntSharedPreference(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method protected final getCachedLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 331
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getCachedLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    .line 332
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getCachedLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final getCachedLongSharedPreference(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 326
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getCachedLongSharedPreference(Ljava/lang/String;J)J

    move-result-wide v0

    .line 327
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getCachedLongSharedPreference(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final getCachedStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getCachedStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getCachedStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getCachedStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getCachedStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getCachedStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .prologue
    .line 261
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method protected final getFloatSharedPreference(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 256
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getFloatSharedPreference(Ljava/lang/String;F)F

    move-result v0

    .line 257
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getFloatSharedPreference(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method protected final getIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 290
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method protected final getIntSharedPreference(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getIntSharedPreference(Ljava/lang/String;I)I

    move-result v0

    .line 285
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getIntSharedPreference(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public final getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getLock()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getLock()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 317
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    .line 318
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final getLongSharedPreference(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 312
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getLongSharedPreference(Ljava/lang/String;J)J

    move-result-wide v0

    .line 313
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getLongSharedPreference(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->getStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->getStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public final registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z
    .locals 1
    .param p2, "weaklyReferenceListener"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected final removeSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->removeSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->removeSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final removeSharedPreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 368
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->removeSharedPreference(Ljava/lang/String;)V

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->removeSharedPreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 142
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # F
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 190
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "event"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 132
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Ljava/lang/String;F)V

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;FLjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Ljava/lang/String;FLjava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Ljava/lang/String;FLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Ljava/lang/String;I)V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 180
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Ljava/lang/String;J)V

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Ljava/lang/String;JLjava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Ljava/lang/String;Z)V

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->setSharedPreference(Ljava/lang/String;ZLjava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->setSharedPreference(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/deprecated/JSAModel;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModel;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModelProxy;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    goto :goto_0
.end method
