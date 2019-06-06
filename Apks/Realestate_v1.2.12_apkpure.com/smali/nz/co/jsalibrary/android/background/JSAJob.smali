.class public abstract Lnz/co/jsalibrary/android/background/JSAJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;
.source "JSAJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final PARCELABLE_PARAMS:Ljava/lang/String; = "parcelable_params"

.field private static final SERIALIZABLE_PARAMS:Ljava/lang/String; = "serializable_params"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSAJob;, "Lnz/co/jsalibrary/android/background/JSAJob<TP;TT;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;-><init>()V

    .line 49
    iput-object p1, p0, Lnz/co/jsalibrary/android/background/JSAJob;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private assertBundleParams(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TP;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSAJob;, "Lnz/co/jsalibrary/android/background/JSAJob<TP;TT;>;"
    const/4 v2, 0x0

    .line 237
    if-eqz p1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The given bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not contain the parameters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "bundleInfo":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/JSAJob;->isParamsRequired()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2, v0}, Lnz/co/jsalibrary/android/background/JSAJob;->assertParams(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    :cond_0
    if-nez p1, :cond_3

    move-object v1, v2

    .line 247
    :cond_1
    :goto_1
    return-object v1

    .line 237
    .end local v0    # "bundleInfo":Ljava/lang/String;
    :cond_2
    const-string v0, "No bundle was provided"

    goto :goto_0

    .line 242
    .restart local v0    # "bundleInfo":Ljava/lang/String;
    :cond_3
    const-string v3, "parcelable_params"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "parcelable_params"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 246
    :goto_2
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/JSAJob;->isParamsRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2, v0}, Lnz/co/jsalibrary/android/background/JSAJob;->assertParams(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_4
    const-string v3, "serializable_params"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "serializable_params"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .local v1, "params":Ljava/io/Serializable;, "TP;"
    goto :goto_2

    .line 244
    .end local v1    # "params":Ljava/io/Serializable;, "TP;"
    :cond_5
    const/4 v1, 0x0

    .local v1, "params":Ljava/lang/Object;, "TP;"
    goto :goto_2
.end method

.method public static buildBundle(Landroid/os/Parcelable;)Landroid/os/Bundle;
    .locals 2
    .param p0    # Landroid/os/Parcelable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">(TP;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "param":Landroid/os/Parcelable;, "TP;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "parcelable_params"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    return-object v0
.end method

.method public static buildBundle(Ljava/io/Serializable;)Landroid/os/Bundle;
    .locals 2
    .param p0    # Ljava/io/Serializable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Ljava/io/Serializable;",
            ">(TP;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "params":Ljava/io/Serializable;, "TP;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "serializable_params"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 65
    return-object v0
.end method


# virtual methods
.method public assertParams(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSAJob;, "Lnz/co/jsalibrary/android/background/JSAJob<TP;TT;>;"
    .local p1, "params":Ljava/lang/Object;, "TP;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/jsalibrary/android/background/JSAJob;->assertParams(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public assertParams(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extraInfo"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSAJob;, "Lnz/co/jsalibrary/android/background/JSAJob<TP;TT;>;"
    .local p1, "params":Ljava/lang/Object;, "TP;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnz/co/jsalibrary/android/background/JSAJob;->isParamsRequired()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires parameters for execution. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Either supply the parameters to the job or update the {@link #isParamsRequired()} method in the job to reflect that "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no parameters are required. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_2

    .end local p2    # "extraInfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local p2    # "extraInfo":Ljava/lang/String;
    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public final execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/os/Handler;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSAJob;, "Lnz/co/jsalibrary/android/background/JSAJob<TP;TT;>;"
    invoke-direct {p0, p2}, Lnz/co/jsalibrary/android/background/JSAJob;->assertBundleParams(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "params":Ljava/lang/Object;, "TP;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnz/co/jsalibrary/android/background/JSAJob;->execute(Ljava/lang/Object;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .param p4, "stop"    # Lnz/co/jsalibrary/android/service/JSAStoppableProcess;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/os/Handler;",
            "Lnz/co/jsalibrary/android/service/JSAStoppableProcess;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSAJob;, "Lnz/co/jsalibrary/android/background/JSAJob<TP;TT;>;"
    invoke-direct {p0, p2}, Lnz/co/jsalibrary/android/background/JSAJob;->assertBundleParams(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "params":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, v0, p4}, Lnz/co/jsalibrary/android/background/JSAJob;->execute(Ljava/lang/Object;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public abstract execute(Ljava/lang/Object;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;
    .param p2    # Lnz/co/jsalibrary/android/service/JSAStoppableProcess;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lnz/co/jsalibrary/android/service/JSAStoppableProcess;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSAJob;, "Lnz/co/jsalibrary/android/background/JSAJob<TP;TT;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/JSAJob;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Exception;",
            "Landroid/os/Handler;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSAJob;, "Lnz/co/jsalibrary/android/background/JSAJob<TP;TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;Lnz/co/jsalibrary/android/service/JSAStoppableProcess;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;
    .param p5, "stop"    # Lnz/co/jsalibrary/android/service/JSAStoppableProcess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Exception;",
            "Landroid/os/Handler;",
            "Lnz/co/jsalibrary/android/service/JSAStoppableProcess;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSAJob;, "Lnz/co/jsalibrary/android/background/JSAJob<TP;TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected isParamsRequired()Z
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lnz/co/jsalibrary/android/background/JSAJob;, "Lnz/co/jsalibrary/android/background/JSAJob<TP;TT;>;"
    const/4 v0, 0x1

    return v0
.end method
