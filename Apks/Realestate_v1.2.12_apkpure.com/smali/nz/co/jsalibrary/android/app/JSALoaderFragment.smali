.class public abstract Lnz/co/jsalibrary/android/app/JSALoaderFragment;
.super Landroid/support/v4/app/Fragment;
.source "JSALoaderFragment.java"


# instance fields
.field private mUniqueFragmentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private setWhoValue(Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    :try_start_0
    const-class v4, Landroid/support/v4/app/Fragment;

    const-string v5, "mWho"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 146
    .local v1, "whoField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 157
    .end local v1    # "whoField":Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "error setting Fragment.#mWho field"

    invoke-static {v2, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move v2, v3

    .line 151
    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "error setting Fragment.#mWho field"

    invoke-static {v2, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move v2, v3

    .line 154
    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "error setting Fragment.#mWho field"

    invoke-static {v2, v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move v2, v3

    .line 157
    goto :goto_0
.end method


# virtual methods
.method public getLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 3

    .prologue
    .line 68
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->mUniqueFragmentId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->mUniqueFragmentId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->setWhoValue(Ljava/lang/String;)Z

    .line 70
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    .line 86
    :goto_0
    return-object v2

    .line 74
    :cond_0
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->getUniqueFragmentId()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "uniqueId":Ljava/lang/String;
    if-nez v1, :cond_1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    goto :goto_0

    .line 80
    :cond_1
    invoke-direct {p0, v1}, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->setWhoValue(Ljava/lang/String;)Z

    move-result v0

    .line 83
    .local v0, "isWhoValueUnique":Z
    if-eqz v0, :cond_2

    iput-object v1, p0, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->mUniqueFragmentId:Ljava/lang/String;

    .line 86
    :cond_2
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    goto :goto_0
.end method

.method protected abstract getUniqueFragmentId()Ljava/lang/String;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->mUniqueFragmentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->mUniqueFragmentId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->setWhoValue(Ljava/lang/String;)Z

    .line 111
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->mUniqueFragmentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->mUniqueFragmentId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->setWhoValue(Ljava/lang/String;)Z

    .line 129
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 130
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->mUniqueFragmentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->mUniqueFragmentId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnz/co/jsalibrary/android/app/JSALoaderFragment;->setWhoValue(Ljava/lang/String;)Z

    .line 118
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 119
    return-void
.end method
