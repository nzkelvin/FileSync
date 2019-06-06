.class Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;
.super Ljava/lang/Object;
.source "JSAThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mIndexedMap:Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final mMap:Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private final mMaxThreadCount:I

.field private mNextItemIndex:I

.field private final mResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mThreadLock:Ljava/lang/Object;

.field private final mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;ILjava/lang/String;)V
    .locals 4
    .param p3, "maxThreadCount"    # I
    .param p4, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;TT;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;, "Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl<TS;TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .local p2, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;TT;>;"
    const/4 v3, 0x0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mThreadLock:Ljava/lang/Object;

    .line 278
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mItems:Ljava/util/List;

    .line 279
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mMap:Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;

    .line 280
    iput-object v3, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mIndexedMap:Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;

    .line 281
    iput p3, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mMaxThreadCount:I

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v3, v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->add(Ljava/util/List;Ljava/lang/Object;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mResult:Ljava/util/List;

    .line 283
    if-eqz p4, :cond_0

    .end local p4    # "threadName":Ljava/lang/String;
    :goto_0
    iput-object p4, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mThreadName:Ljava/lang/String;

    .line 284
    return-void

    .line 283
    .restart local p4    # "threadName":Ljava/lang/String;
    :cond_0
    const-class v0, Lnz/co/jsalibrary/android/util/JSAThreadUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;ILjava/lang/String;)V
    .locals 4
    .param p3, "maxThreadCount"    # I
    .param p4, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction",
            "<TS;TT;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;, "Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl<TS;TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .local p2, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction<TS;TT;>;"
    const/4 v3, 0x0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mThreadLock:Ljava/lang/Object;

    .line 287
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mItems:Ljava/util/List;

    .line 288
    iput-object v3, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mMap:Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;

    .line 289
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mIndexedMap:Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;

    .line 290
    iput p3, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mMaxThreadCount:I

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v3, v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->add(Ljava/util/List;Ljava/lang/Object;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mResult:Ljava/util/List;

    .line 292
    if-eqz p4, :cond_0

    .end local p4    # "threadName":Ljava/lang/String;
    :goto_0
    iput-object p4, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mThreadName:Ljava/lang/String;

    .line 293
    return-void

    .line 292
    .restart local p4    # "threadName":Ljava/lang/String;
    :cond_0
    const-class v0, Lnz/co/jsalibrary/android/util/JSAThreadUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    goto :goto_0
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    .prologue
    .line 267
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$108(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)I
    .locals 2
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    .prologue
    .line 267
    iget v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mNextItemIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mNextItemIndex:I

    return v0
.end method

.method static synthetic access$200(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    .prologue
    .line 267
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mResult:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    .prologue
    .line 267
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mMap:Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;

    return-object v0
.end method

.method static synthetic access$400(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    .prologue
    .line 267
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;

    .prologue
    .line 267
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mIndexedMap:Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;, "Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl<TS;TT;>;"
    iget-object v5, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mMaxThreadCount:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 297
    .local v3, "threadCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    .local v4, "threads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Thread;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 300
    new-instance v2, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;

    invoke-direct {v2, p0}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;-><init>(Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;)V

    .line 301
    .local v2, "thread":Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;, "Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread<TS;TT;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mThreadName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->setName(Ljava/lang/String;)V

    .line 302
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;->start()V

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .end local v2    # "thread":Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread;, "Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImplThread<TS;TT;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 308
    .local v1, "thread":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 309
    :catch_0
    move-exception v6

    goto :goto_1

    .line 311
    .end local v1    # "thread":Ljava/lang/Thread;
    :cond_1
    iget-object v5, p0, Lnz/co/jsalibrary/android/util/JSAThreadUtil$MapImpl;->mResult:Ljava/util/List;

    return-object v5
.end method
