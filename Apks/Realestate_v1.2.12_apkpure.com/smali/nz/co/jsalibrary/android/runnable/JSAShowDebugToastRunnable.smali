.class public Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;
.super Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;
.source "JSAShowDebugToastRunnable.java"


# static fields
.field private static sMessagePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "duration"    # I

    .prologue
    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "duration"    # I

    .prologue
    .line 56
    sget-object v0, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;->sMessagePrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;->sMessagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;IIII)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "duration"    # I
    .param p4, "gravity"    # I
    .param p5, "xOffset"    # I
    .param p6, "yOffset"    # I

    .prologue
    .line 61
    sget-object v0, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;->sMessagePrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;->sMessagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;IIII)V

    .line 62
    return-void

    :cond_0
    move-object v2, p2

    .line 61
    goto :goto_0
.end method

.method public static setMessagePrefix(Ljava/lang/String;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 162
    sput-object p0, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;->sMessagePrefix:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 117
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;

    invoke-direct {v0, p0, p1}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public static show(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "duration"    # I

    .prologue
    .line 122
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;

    invoke-direct {v0, p0, p1, p2}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;-><init>(Landroid/content/Context;II)V

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 78
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;

    invoke-direct {v0, p0, p2}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/os/Handler;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "duration"    # I

    .prologue
    .line 85
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;

    invoke-direct {v0, p0, p2, p3}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;

    invoke-direct {v0, p0, p2}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "duration"    # I

    .prologue
    .line 92
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;

    invoke-direct {v0, p0, p2, p3}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/CharSequence;IIII)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "duration"    # I
    .param p4, "gravity"    # I
    .param p5, "xOffset"    # I
    .param p6, "yOffset"    # I

    .prologue
    .line 100
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;IIII)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;

    invoke-direct {v0, p0, p1}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "duration"    # I

    .prologue
    .line 127
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;

    invoke-direct {v0, p0, p1, p2}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;IIII)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .param p3, "gravity"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I

    .prologue
    .line 134
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;IIII)V

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method private static showDebug(Landroid/content/Context;Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "runnable"    # Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;

    .prologue
    .line 152
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAApplicationUtil;->isDebugBuild(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;->build()Landroid/widget/Toast;

    move-result-object v0

    .line 154
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;->showDebug(Landroid/content/Context;Lnz/co/jsalibrary/android/runnable/JSAShowDebugToastRunnable;)V

    .line 145
    return-void
.end method
