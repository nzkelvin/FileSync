.class abstract Lnz/co/jsalibrary/android/model/JSAModelBase;
.super Ljava/lang/Object;
.source "JSAModelBase.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAICompositeEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/model/JSAModelBase$DispatchEventRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/event/JSAICompositeEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final SHARED_PREFERENCE_ERROR:Ljava/lang/String; = "error accessing shared preference. override getSharedPreferences() to use"


# instance fields
.field protected final transient mBackgroundThread:Landroid/os/HandlerThread;

.field protected final transient mBackgroundThreadHandler:Landroid/os/Handler;

.field protected final transient mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected final transient mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;-><init>(Z)V

    .line 62
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3
    .param p1, "isApplicationModel"    # Z

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->constructEventListener()Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mUIThreadHandler:Landroid/os/Handler;

    .line 77
    if-eqz p1, :cond_2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "JSAModelBackgroundThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 78
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Landroid/os/Handler;

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_1
    iput-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mBackgroundThreadHandler:Landroid/os/Handler;

    .line 80
    return-void

    :cond_2
    move-object v0, v1

    .line 77
    goto :goto_0
.end method


# virtual methods
.method protected constructEventListener()Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;-><init>()V

    return-object v0
.end method

.method protected dispatchEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 99
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->isUiThread()Z

    move-result v0

    .line 100
    .local v0, "isUIThread":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    new-instance v2, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-direct {v2, p1, p2}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 102
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v2, Lnz/co/jsalibrary/android/model/JSAModelBase$DispatchEventRunnable;

    invoke-direct {v2, p0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBase$DispatchEventRunnable;-><init>(Lnz/co/jsalibrary/android/model/JSAModelBase;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final getBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultValue"    # Z

    .prologue
    .line 608
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 609
    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected final getBooleanSharedPreference(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Z

    .prologue
    .line 599
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 600
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 601
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected getCachedBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 818
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getBooleanSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected final getCachedBooleanSharedPreference(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getBooleanSharedPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected final getCachedEnumSharedPreference(Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Enum;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 767
    .local p2, "defaultValue":Ljava/lang/Enum;, "TT;"
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 768
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getEnumSharedPreference(Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method protected getCachedFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 832
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected final getCachedFloatSharedPreference(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getFloatSharedPreference(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected getCachedIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 846
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected final getCachedIntSharedPreference(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 677
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getIntSharedPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getCachedLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultValue"    # J

    .prologue
    .line 860
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getCachedLongSharedPreference(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 706
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getLongSharedPreference(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getCachedStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 875
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getCachedStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 736
    invoke-virtual {p0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getEnumSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Enum;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 754
    .local p3, "defaultValue":Ljava/lang/Enum;, "TT;"
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 755
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0, p3, p4}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->stringToEnum(Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    return-object v1
.end method

.method protected final getEnumSharedPreference(Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Enum;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 746
    .local p2, "defaultValue":Ljava/lang/Enum;, "TT;"
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 747
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0, p2, p3}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->stringToEnum(Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    return-object v1
.end method

.method protected getEventListener()Lnz/co/jsalibrary/android/event/JSACompositeEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    return-object v0
.end method

.method protected final getFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultValue"    # F

    .prologue
    .line 637
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 638
    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected final getFloatSharedPreference(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # F

    .prologue
    .line 628
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 629
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 630
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 631
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getFloatSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method protected final getIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultValue"    # I

    .prologue
    .line 666
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 667
    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected final getIntSharedPreference(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # I

    .prologue
    .line 657
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 658
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 659
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getIntSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected final getLock()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 150
    return-object p0
.end method

.method protected final getLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultValue"    # J

    .prologue
    .line 695
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 696
    :cond_1
    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getLongSharedPreference(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # J

    .prologue
    .line 686
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 687
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 688
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 689
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getLongSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method protected getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 725
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 726
    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getStringSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 716
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 717
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 718
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 719
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getStringSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 126
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
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
    .line 130
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
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
    .line 134
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1, p2}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z

    move-result v0

    return v0
.end method

.method protected final removeSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 789
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 790
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->removeSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method protected final removeSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 796
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 798
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 799
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 800
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 803
    :goto_0
    if-eqz p3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1}, Lnz/co/jsalibrary/android/model/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 804
    :cond_2
    return-void

    .line 801
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method protected final removeSharedPreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 776
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 777
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->removeSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method protected final removeSharedPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 781
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 782
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 783
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 784
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBase;->removeSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method protected runOnBackgroundThread(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 888
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 889
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mBackgroundThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 891
    :goto_0
    return v0

    .line 890
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mBackgroundThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 891
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;F)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # F

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;)V

    .line 302
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # F
    .param p4, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 307
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 309
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 310
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 311
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 314
    :goto_0
    if-eqz p4, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Lnz/co/jsalibrary/android/model/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 315
    :cond_2
    return-void

    .line 312
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 0
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # F
    .param p4, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "qualify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;)V

    .line 330
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # I

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # I
    .param p4, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 375
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 377
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 378
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 379
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 382
    :goto_0
    if-eqz p4, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Lnz/co/jsalibrary/android/model/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 383
    :cond_2
    return-void

    .line 380
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # I
    .param p4, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "qualify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 398
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # J

    .prologue
    .line 437
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V

    .line 438
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # J
    .param p5, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 443
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 444
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 445
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 446
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 449
    :goto_0
    if-eqz p5, :cond_2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p5, v1}, Lnz/co/jsalibrary/android/model/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 450
    :cond_2
    return-void

    .line 447
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # J
    .param p5, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "qualify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    invoke-virtual/range {p0 .. p5}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V

    .line 465
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Enum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p3, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-static {p3}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->enumToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Enum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 575
    .local p3, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-static {p3}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->enumToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Enum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "qualify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 590
    .local p3, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-static {p3}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->enumToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 504
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 510
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 512
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 513
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 514
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 517
    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p0, p4, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 518
    :cond_2
    return-void

    .line 515
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "qualify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 532
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # Z

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;)V

    .line 233
    return-void
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # Z
    .param p4, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 238
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 240
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 241
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 242
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 245
    :goto_0
    if-eqz p4, :cond_2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Lnz/co/jsalibrary/android/model/JSAModelBase;->dispatchEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 246
    :cond_2
    return-void

    .line 243
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method protected final setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # Z
    .param p4, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "qualify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;)V

    .line 261
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Ljava/lang/String;FLjava/lang/String;)V

    .line 273
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;FLjava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F
    .param p3, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 281
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 283
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;FLjava/lang/String;)V

    .line 285
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # F
    .param p3, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "qualify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Ljava/lang/String;FLjava/lang/String;)V

    .line 297
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # I

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Ljava/lang/String;ILjava/lang/String;)V

    .line 342
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # I
    .param p3, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 349
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 350
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 351
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # I
    .param p3, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "qualify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # J

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Ljava/lang/String;JLjava/lang/String;)V

    .line 410
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # J
    .param p4, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 417
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 419
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    .line 420
    invoke-virtual/range {v1 .. v6}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V

    .line 421
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # J
    .param p4, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "qualify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Ljava/lang/String;JLjava/lang/String;)V

    .line 433
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Enum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p2, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-static {p2}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->enumToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Enum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 552
    .local p2, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-static {p2}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->enumToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Enum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "qualify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 564
    .local p2, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-static {p2}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->enumToString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 485
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 486
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 487
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "qualify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Z

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Ljava/lang/String;ZLjava/lang/String;)V

    .line 204
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Z
    .param p3, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 212
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 213
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModelBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error accessing shared preference. override getSharedPreferences() to use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;ZLjava/lang/String;)V

    .line 216
    return-void
.end method

.method protected final setSharedPreference(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Z
    .param p3, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "qualify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModelBase;->setSharedPreference(Ljava/lang/String;ZLjava/lang/String;)V

    .line 228
    return-void
.end method

.method final transferListeners(Lnz/co/jsalibrary/android/event/JSACompositeEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSACompositeEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "compositeListener":Lnz/co/jsalibrary/android/event/JSACompositeEventListener;, "Lnz/co/jsalibrary/android/event/JSACompositeEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->transferListeners(Lnz/co/jsalibrary/android/event/JSACompositeEventListener;)V

    .line 143
    return-void
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
    .line 138
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBase;->mListener:Lnz/co/jsalibrary/android/event/JSACompositeEventListener;

    invoke-virtual {v0, p1}, Lnz/co/jsalibrary/android/event/JSACompositeEventListener;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    move-result v0

    return v0
.end method
