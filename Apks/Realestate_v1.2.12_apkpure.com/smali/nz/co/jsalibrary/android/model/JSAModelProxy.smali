.class public abstract Lnz/co/jsalibrary/android/model/JSAModelProxy;
.super Ljava/lang/Object;
.source "JSAModelProxy.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAICompositeEventListener;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/event/JSAICompositeEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6a0483f3f8566774L


# instance fields
.field protected final mModel:Lnz/co/jsalibrary/android/model/JSAModel;

.field protected final mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/model/JSAModel;)V
    .locals 1
    .param p1, "model"    # Lnz/co/jsalibrary/android/model/JSAModel;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    .line 48
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/model/JSAModelProxy;)V
    .locals 1
    .param p1, "proxy"    # Lnz/co/jsalibrary/android/model/JSAModelProxy;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    .line 54
    return-void
.end method


# virtual methods
.method protected clearPersistentProperty(Ljava/lang/String;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/model/JSAModel;->clearPersistentProperty(Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->clearPersistentProperty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected clearPersistentProperty(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "dispatchEvent"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->clearPersistentProperty(Ljava/lang/String;Z)V

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->clearPersistentProperty(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected containsPersistentProperty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/model/JSAModel;->containsPersistentProperty(Ljava/lang/String;)Z

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->containsPersistentProperty(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final dispatchEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method protected final dispatchEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "preventModelSave"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 153
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    goto :goto_0
.end method

.method protected final getBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->getBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    .line 324
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected final getBooleanSharedPreference(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 318
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->getBooleanSharedPreference(Ljava/lang/String;Z)Z

    move-result v0

    .line 319
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getBooleanSharedPreference(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected getCachedBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->getCachedBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    .line 428
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getCachedBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected final getCachedBooleanSharedPreference(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->getCachedBooleanSharedPreference(Ljava/lang/String;Z)Z

    move-result v0

    .line 329
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getCachedBooleanSharedPreference(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected getCachedFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->getCachedFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    .line 437
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getCachedFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method protected final getCachedFloatSharedPreference(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->getCachedFloatSharedPreference(Ljava/lang/String;F)F

    move-result v0

    .line 348
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getCachedFloatSharedPreference(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method protected getCachedIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->getCachedIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 446
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getCachedIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method protected final getCachedIntSharedPreference(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->getCachedIntSharedPreference(Ljava/lang/String;I)I

    move-result v0

    .line 367
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getCachedIntSharedPreference(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method protected getCachedLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModel;->getCachedLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    .line 455
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getCachedLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final getCachedLongSharedPreference(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->getCachedLongSharedPreference(Ljava/lang/String;J)J

    move-result-wide v0

    .line 386
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getCachedLongSharedPreference(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected getCachedStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->getCachedStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getCachedStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getCachedStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->getCachedStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getCachedStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/model/JSAModel;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .prologue
    .line 342
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->getFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    .line 343
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method protected final getFloatSharedPreference(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 337
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->getFloatSharedPreference(Ljava/lang/String;F)F

    move-result v0

    .line 338
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getFloatSharedPreference(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method protected final getIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->getIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 362
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method protected final getIntSharedPreference(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->getIntSharedPreference(Ljava/lang/String;I)I

    move-result v0

    .line 357
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getIntSharedPreference(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public final getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/model/JSAModel;->getLock()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getLock()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 380
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModel;->getLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    .line 381
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final getLongSharedPreference(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 375
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->getLongSharedPreference(Ljava/lang/String;J)J

    move-result-wide v0

    .line 376
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getLongSharedPreference(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPersistentProperty(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/model/JSAModel;->getPersistentProperty(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getPersistentProperty(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0
.end method

.method protected getPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/io/Serializable;

    .prologue
    .line 105
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->getPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/model/JSAModel;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->getStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .line 169
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/model/JSAModel;->isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

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
    .line 173
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/model/JSAModel;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

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
    .line 177
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected final removeSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 418
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->removeSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->removeSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final removeSharedPreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/model/JSAModel;->removeSharedPreference(Ljava/lang/String;)V

    .line 415
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->removeSharedPreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 80
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->setPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method

.method protected setPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;Z)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;
    .param p3, "dispatchEvent"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->setPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;Z)V

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->getParentPersistentPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setPersistentProperty(Ljava/lang/String;Ljava/io/Serializable;Z)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 232
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # F
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;)V

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 280
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    .line 282
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "event"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 222
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Ljava/lang/String;F)V

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;FLjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Ljava/lang/String;FLjava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Ljava/lang/String;FLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Ljava/lang/String;I)V

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Ljava/lang/String;ILjava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 270
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Ljava/lang/String;J)V

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "event"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Ljava/lang/String;JLjava/lang/String;)V

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Ljava/lang/String;Z)V

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected final setSharedPreference(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->setSharedPreference(Ljava/lang/String;ZLjava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->setSharedPreference(Ljava/lang/String;ZLjava/lang/String;)V

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
    .line 182
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModel:Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/model/JSAModel;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelProxy;->mModelProxy:Lnz/co/jsalibrary/android/model/JSAModelProxy;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/model/JSAModelProxy;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    goto :goto_0
.end method
