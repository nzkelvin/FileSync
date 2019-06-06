.class public Lnz/co/jsalibrary/android/util/JSAHashUtil;
.super Ljava/lang/Object;
.source "JSAHashUtil.java"


# static fields
.field public static final HASH_ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field public static final HASH_ALGORITHM_SHA1:Ljava/lang/String; = "SHA-1"

.field public static final HASH_ALGORITHM_SHA256:Ljava/lang/String; = "SHA-256"

.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnz/co/jsalibrary/android/util/JSAHashUtil;->HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5Hex(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashHex(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static MD5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static MD5Hex([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashHex([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static MD5Hex([BII)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const-string v0, "MD5"

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashHex([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static MD5HexNoException(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 92
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 94
    :cond_0
    :try_start_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->MD5Hex(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "exception":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "error creating md5 hash"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/util/JSAHashUtil;

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 97
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static MD5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 127
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hashCode(D)I
    .locals 4
    .param p0, "dbl"    # D

    .prologue
    .line 48
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 49
    .local v0, "bits":J
    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashCode(J)I

    move-result v2

    return v2
.end method

.method public static hashCode(F)I
    .locals 1
    .param p0, "flt"    # F

    .prologue
    .line 58
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public static hashCode(J)I
    .locals 2
    .param p0, "lng"    # J

    .prologue
    .line 67
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static hashCode(Z)I
    .locals 1
    .param p0, "bool"    # Z

    .prologue
    .line 39
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public static hashHex(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 145
    :cond_1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 146
    .local v3, "md":Ljava/security/MessageDigest;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 148
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, v1, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    const/16 v4, 0x400

    :try_start_1
    new-array v0, v4, [B

    .line 150
    .local v0, "buf":[B
    :cond_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 152
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 154
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->toHex([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 152
    .end local v0    # "buf":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v4

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static hashHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 136
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 137
    :cond_1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 138
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 139
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->toHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hashHex([BIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 166
    :cond_1
    invoke-static {p3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 167
    .local v3, "md":Ljava/security/MessageDigest;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 169
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, v1, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    const/16 v4, 0x400

    :try_start_1
    new-array v0, v4, [B

    .line 171
    .local v0, "buf":[B
    :cond_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 173
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 175
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->toHex([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 173
    .end local v0    # "buf":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v4

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static hashHex([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 160
    :cond_1
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->hashHex([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hashString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    .line 184
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 185
    :cond_1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 186
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 187
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 188
    .local v0, "array":[B
    array-length v2, v0

    .line 189
    .local v2, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    shl-int/lit8 v5, v2, 0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 190
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 191
    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-static {v5, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    aget-byte v5, v0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static safeHashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 80
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAHashUtil;->toHex([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([BZ)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "upper"    # Z

    .prologue
    .line 208
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    .line 209
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 210
    mul-int/lit8 v2, v1, 0x2

    sget-object v3, Lnz/co/jsalibrary/android/util/JSAHashUtil;->HEX_DIGITS:[C

    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 211
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lnz/co/jsalibrary/android/util/JSAHashUtil;->HEX_DIGITS:[C

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_1
.end method
