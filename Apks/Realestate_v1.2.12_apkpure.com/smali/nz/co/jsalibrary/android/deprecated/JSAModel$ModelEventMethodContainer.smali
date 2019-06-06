.class Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;
.super Ljava/lang/Object;
.source "JSAModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/deprecated/JSAModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelEventMethodContainer"
.end annotation


# static fields
.field private static final ON_EVENT_METHOD_NAME_LENGTH:I = 0x7

.field private static final ON_EVENT_PREFIX:Ljava/lang/String; = "onEvent"


# instance fields
.field private final mEventMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIsOnEventAnnotated:Z

.field private final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<",
            "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    const/4 v5, 0x0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 241
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->mEventMethodMap:Ljava/util/Map;

    .line 242
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->mListener:Ljava/lang/ref/WeakReference;

    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lnz/co/jsalibrary/android/deprecated/JSAModel$IgnoreEventMethods;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    .line 245
    .local v1, "ignoreEventMethods":Z
    :goto_0
    if-eqz v1, :cond_3

    new-array v4, v5, [Ljava/lang/reflect/Method;

    .line 246
    .local v4, "methods":[Ljava/lang/reflect/Method;
    :goto_1
    const/4 v2, 0x0

    .line 248
    .local v2, "isOnEventAnnotated":Z
    array-length v6, v4

    :goto_2
    if-ge v5, v6, :cond_6

    aget-object v3, v4, v5

    .line 249
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "onEvent"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 248
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v1    # "ignoreEventMethods":Z
    .end local v2    # "isOnEventAnnotated":Z
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    :cond_2
    move v1, v5

    .line 244
    goto :goto_0

    .line 245
    .restart local v1    # "ignoreEventMethods":Z
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_1

    .line 250
    .restart local v2    # "isOnEventAnnotated":Z
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v4    # "methods":[Ljava/lang/reflect/Method;
    :cond_4
    const-class v7, Lnz/co/jsalibrary/android/deprecated/JSAModel$EventMethod;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/deprecated/JSAModel$EventMethod;

    .line 251
    .local v0, "annotation":Lnz/co/jsalibrary/android/deprecated/JSAModel$EventMethod;
    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_5

    const/4 v2, 0x1

    .line 253
    :cond_5
    invoke-direct {p0, v3, v0}, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->addAnnotatedMethodToMap(Ljava/lang/reflect/Method;Lnz/co/jsalibrary/android/deprecated/JSAModel$EventMethod;)V

    goto :goto_3

    .line 256
    .end local v0    # "annotation":Lnz/co/jsalibrary/android/deprecated/JSAModel$EventMethod;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_6
    iput-boolean v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->mIsOnEventAnnotated:Z

    .line 257
    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Lnz/co/jsalibrary/android/deprecated/JSAModel$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/event/JSAOnEventListener;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/deprecated/JSAModel$1;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;-><init>(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)V

    return-void
.end method

.method static synthetic access$200(Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;
    .param p1, "x1"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method private addAnnotatedMethodToMap(Ljava/lang/reflect/Method;Lnz/co/jsalibrary/android/deprecated/JSAModel$EventMethod;)V
    .locals 8
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "annotation"    # Lnz/co/jsalibrary/android/deprecated/JSAModel$EventMethod;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 264
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 267
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 268
    .local v3, "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v5, v3

    if-ne v5, v7, :cond_2

    aget-object v5, v3, v4

    const-class v6, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 269
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has an invalid signature for @EventMethod annotation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSALogUtil;->w(Ljava/lang/Object;)V

    .line 287
    :cond_3
    return-void

    .line 274
    :cond_4
    invoke-virtual {p1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 277
    invoke-interface {p2}, Lnz/co/jsalibrary/android/deprecated/JSAModel$EventMethod;->value()[Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "events":[Ljava/lang/String;
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v2, v4

    .line 279
    .local v0, "event":Ljava/lang/String;
    iget-object v6, p0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->mEventMethodMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 280
    .local v1, "eventMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "eventMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .restart local v1    # "eventMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v6, p0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->mEventMethodMap:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private logOnEventException(Ljava/lang/Exception;Ljava/lang/reflect/Method;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 319
    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/event/JSAOnEventListener;

    .line 320
    .local v0, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "name":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error invoking annotated event method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 322
    return-void

    .line 320
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    const-string v1, " nulled reference"

    goto :goto_0
.end method

.method private onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 7
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 294
    iget-object v4, p0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/event/JSAOnEventListener;

    .line 295
    .local v1, "listener":Lnz/co/jsalibrary/android/event/JSAOnEventListener;, "Lnz/co/jsalibrary/android/event/JSAOnEventListener<Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;>;"
    if-nez v1, :cond_1

    .line 312
    :cond_0
    return-void

    .line 297
    :cond_1
    iget-boolean v4, p0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->mIsOnEventAnnotated:Z

    if-nez v4, :cond_2

    invoke-interface {v1, p1}, Lnz/co/jsalibrary/android/event/JSAOnEventListener;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V

    .line 298
    :cond_2
    iget-object v4, p0, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->mEventMethodMap:Ljava/util/Map;

    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 299
    .local v3, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    if-eqz v3, :cond_0

    .line 301
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 303
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v0, v2}, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->logOnEventException(Ljava/lang/Exception;Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 306
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 307
    .local v0, "exception":Ljava/lang/IllegalAccessException;
    invoke-direct {p0, v0, v2}, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->logOnEventException(Ljava/lang/Exception;Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 308
    .end local v0    # "exception":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 309
    .local v0, "exception":Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0, v0, v2}, Lnz/co/jsalibrary/android/deprecated/JSAModel$ModelEventMethodContainer;->logOnEventException(Ljava/lang/Exception;Ljava/lang/reflect/Method;)V

    goto :goto_0
.end method
