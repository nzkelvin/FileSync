.class public Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;
.super Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;
.source "JSATypedDbBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSATypedDbBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedUpdateParams"
.end annotation


# instance fields
.field private final mMaxRecursiveSteps:I

.field private final mUpdateMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1319
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;-><init>()V

    .line 1320
    new-instance v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->mUpdateMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;

    .line 1321
    const v0, 0x7fffffff

    iput v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->mMaxRecursiveSteps:I

    .line 1322
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxRecursiveSteps"    # I

    .prologue
    const/4 v1, -0x1

    .line 1324
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;-><init>()V

    .line 1325
    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1326
    :cond_0
    new-instance v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->mUpdateMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;

    .line 1327
    if-ne p1, v1, :cond_1

    const p1, 0x7fffffff

    .end local p1    # "maxRecursiveSteps":I
    :cond_1
    iput p1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->mMaxRecursiveSteps:I

    .line 1328
    return-void
.end method

.method public constructor <init>(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;I)V
    .locals 2
    .param p1, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;
    .param p2, "maxRecursiveSteps"    # I

    .prologue
    const/4 v1, -0x1

    .line 1330
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;-><init>()V

    .line 1331
    if-eqz p1, :cond_0

    if-ge p2, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1332
    :cond_1
    iget-object v0, p1, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->mUpdateMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->mUpdateMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;

    .line 1333
    if-ne p2, v1, :cond_2

    const p2, 0x7fffffff

    .end local p2    # "maxRecursiveSteps":I
    :cond_2
    iput p2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->mMaxRecursiveSteps:I

    .line 1334
    return-void
.end method

.method private constructor <init>(Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;I)V
    .locals 1
    .param p1, "map"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;
    .param p2, "maxRecursiveSteps"    # I

    .prologue
    .line 1336
    invoke-direct {p0}, Lnz/co/jsalibrary/android/database/JSADbBase$UpdateParams;-><init>()V

    .line 1337
    new-instance v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->mUpdateMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;

    .line 1338
    iput p2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->mMaxRecursiveSteps:I

    .line 1339
    return-void
.end method

.method static synthetic access$500(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;

    .prologue
    .line 1315
    iget-object v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->mUpdateMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;

    return-object v0
.end method

.method static synthetic access$600(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;

    .prologue
    .line 1315
    iget v0, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->mMaxRecursiveSteps:I

    return v0
.end method

.method static synthetic access$700(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;

    .prologue
    .line 1315
    invoke-static {p0}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->recurse(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;

    move-result-object v0

    return-object v0
.end method

.method private static recurse(Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;)Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;
    .locals 3
    .param p0, "params"    # Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;

    .prologue
    .line 1342
    new-instance v0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;

    iget-object v1, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->mUpdateMap:Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;

    iget v2, p0, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;->mMaxRecursiveSteps:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/database/JSATypedDbBase$TypedUpdateParams;-><init>(Lnz/co/jsalibrary/android/database/JSATypedDbBase$UpdateMap;I)V

    return-object v0
.end method
