.class Lcom/google/android/gms/tagmanager/zzcd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final awV:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final awW:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcd;->awV:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzcd;->awW:Z

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcd;->awV:Ljava/lang/Object;

    return-object v0
.end method

.method public zzcbz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcd;->awW:Z

    return v0
.end method
