.class public Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
.super Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;
.source "JSATypedDbBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSATypedDbBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedQueryParams"
.end annotation


# instance fields
.field private final mMaxRecursiveSteps:I

.field private final mQueryMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1284
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;-><init>()V

    .line 1285
    new-instance v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->mQueryMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;

    .line 1286
    const v0, 0x7fffffff

    iput v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->mMaxRecursiveSteps:I

    .line 1287
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxRecursiveSteps"    # I

    .prologue
    const/4 v1, -0x1

    .line 1289
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;-><init>()V

    .line 1290
    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1291
    :cond_0
    new-instance v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->mQueryMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;

    .line 1292
    if-ne p1, v1, :cond_1

    const p1, 0x7fffffff

    .end local p1    # "maxRecursiveSteps":I
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->mMaxRecursiveSteps:I

    .line 1293
    return-void
.end method

.method private constructor <init>(Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;I)V
    .locals 0
    .param p1, "map"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;
    .param p2, "maxRecursiveSteps"    # I

    .prologue
    .line 1301
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;-><init>()V

    .line 1302
    iput-object p1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->mQueryMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;

    .line 1303
    iput p2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->mMaxRecursiveSteps:I

    .line 1304
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;I)V
    .locals 2
    .param p1, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .param p2, "maxRecursiveSteps"    # I

    .prologue
    const/4 v1, -0x1

    .line 1295
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSADbBase$QueryParams;-><init>()V

    .line 1296
    if-eqz p1, :cond_0

    if-ge p2, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1297
    :cond_1
    iget-object v0, p1, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->mQueryMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->mQueryMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;

    .line 1298
    if-ne p2, v1, :cond_2

    const p2, 0x7fffffff

    .end local p2    # "maxRecursiveSteps":I
    :cond_2
    iput p2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->mMaxRecursiveSteps:I

    .line 1299
    return-void
.end method

.method static synthetic access$1000(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;

    .prologue
    .line 1280
    invoke-static {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->recurse(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;

    .prologue
    .line 1280
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->mQueryMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;

    return-object v0
.end method

.method static synthetic access$900(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;

    .prologue
    .line 1280
    iget v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->mMaxRecursiveSteps:I

    return v0
.end method

.method private static recurse(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;
    .locals 3
    .param p0, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;

    .prologue
    .line 1307
    new-instance v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;

    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->mQueryMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;

    iget v2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;->mMaxRecursiveSteps:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedQueryParams;-><init>(Lnz/co/jsalibrary/android/database/JSATypedDbBase$QueryMap;I)V

    return-object v0
.end method
