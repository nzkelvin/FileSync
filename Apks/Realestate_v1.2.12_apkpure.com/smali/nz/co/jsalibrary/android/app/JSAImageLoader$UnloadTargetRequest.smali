.class Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"

# interfaces
.implements Lnz/co/jsalibrary/android/app/JSAImageLoader$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnloadTargetRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/app/JSAImageLoader$Request",
        "<TJobItem;>;"
    }
.end annotation


# instance fields
.field private final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetHashCode:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 1176
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1177
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1178
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;->mTarget:Ljava/lang/ref/WeakReference;

    .line 1179
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;->mTargetHashCode:I

    .line 1180
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lnz/co/jsalibrary/android/app/JSAImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/app/JSAImageLoader$1;

    .prologue
    .line 1172
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    const/4 v1, 0x0

    .line 1191
    instance-of v2, p1, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;

    if-nez v2, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1192
    check-cast v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;

    .line 1193
    .local v0, "request":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    iget v2, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;->mTargetHashCode:I

    iget v3, v0, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;->mTargetHashCode:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getJobItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TJobItem;"
        }
    .end annotation

    .prologue
    .line 1183
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1187
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1197
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    iget v0, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;->mTargetHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1201
    .local p0, "this":Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest<TJobItem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnloadTarget{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/app/JSAImageLoader$UnloadTargetRequest;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
