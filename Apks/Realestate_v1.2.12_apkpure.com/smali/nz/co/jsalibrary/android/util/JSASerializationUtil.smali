.class public Lnz/co/jsalibrary/android/util/JSASerializationUtil;
.super Ljava/lang/Object;
.source "JSASerializationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 98
    .local v0, "data":[B
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    .local v2, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 100
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 101
    check-cast v1, Ljava/io/Serializable;

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1
.end method

.method public static loadSerializableFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 69
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 71
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 72
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    .local v1, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    .line 74
    .local v2, "serializable":Ljava/io/Serializable;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 75
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 77
    return-object v2
.end method

.method public static saveSerializableToFile(Ljava/io/Serializable;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "serializable"    # Ljava/io/Serializable;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSASerializationUtil;->saveSerializableToFile(Ljava/io/Serializable;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 34
    return-void
.end method

.method public static saveSerializableToFile(Ljava/io/Serializable;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "serializable"    # Ljava/io/Serializable;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "deleteExistingFile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 49
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 51
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 52
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 53
    .local v1, "out":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 55
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 56
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 57
    return-void
.end method

.method public static toString(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 5
    .param p0, "o"    # Ljava/io/Serializable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 87
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 89
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method
