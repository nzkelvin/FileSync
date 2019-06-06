.class public Lnz/co/jsalibrary/android/util/JSAMimeUtil;
.super Ljava/lang/Object;
.source "JSAMimeUtil.java"


# static fields
.field public static final AUDIO_3GPP:Ljava/lang/String; = "audio/3gpp"

.field public static final AUDIO_AAC:Ljava/lang/String; = "audio/aac"

.field public static final AUDIO_AMR:Ljava/lang/String; = "audio/amr"

.field public static final AUDIO_IMELODY:Ljava/lang/String; = "audio/imelody"

.field public static final AUDIO_MID:Ljava/lang/String; = "audio/mid"

.field public static final AUDIO_MIDI:Ljava/lang/String; = "audio/midi"

.field public static final AUDIO_MP3:Ljava/lang/String; = "audio/mp3"

.field public static final AUDIO_MP4:Ljava/lang/String; = "audio/mp4"

.field public static final AUDIO_MPEG:Ljava/lang/String; = "audio/mpeg"

.field public static final AUDIO_MPEG3:Ljava/lang/String; = "audio/mpeg3"

.field public static final AUDIO_MPG:Ljava/lang/String; = "audio/mpg"

.field public static final AUDIO_OGG:Ljava/lang/String; = "application/ogg"

.field public static final AUDIO_UNSPECIFIED:Ljava/lang/String; = "audio/*"

.field public static final AUDIO_X_MID:Ljava/lang/String; = "audio/x-mid"

.field public static final AUDIO_X_MIDI:Ljava/lang/String; = "audio/x-midi"

.field public static final AUDIO_X_MP3:Ljava/lang/String; = "audio/x-mp3"

.field public static final AUDIO_X_MPEG:Ljava/lang/String; = "audio/x-mpeg"

.field public static final AUDIO_X_MPEG3:Ljava/lang/String; = "audio/x-mpeg3"

.field public static final AUDIO_X_MPG:Ljava/lang/String; = "audio/x-mpg"

.field public static final IMAGE_GIF:Ljava/lang/String; = "image/gif"

.field public static final IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final IMAGE_JPG:Ljava/lang/String; = "image/jpg"

.field public static final IMAGE_PNG:Ljava/lang/String; = "image/png"

.field public static final IMAGE_UNSPECIFIED:Ljava/lang/String; = "image/*"

.field public static final IMAGE_WBMP:Ljava/lang/String; = "image/vnd.wap.wbmp"

.field public static final TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final TEXT_VCALENDAR:Ljava/lang/String; = "text/x-vCalendar"

.field public static final TEXT_VCARD:Ljava/lang/String; = "text/x-vCard"

.field public static final VIDEO_3G2:Ljava/lang/String; = "video/3gpp2"

.field public static final VIDEO_3GPP:Ljava/lang/String; = "video/3gpp"

.field public static final VIDEO_H263:Ljava/lang/String; = "video/h263"

.field public static final VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final VIDEO_UNSPECIFIED:Ljava/lang/String; = "video/*"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 230
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 231
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 232
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 233
    const/4 v2, 0x0

    .line 235
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 236
    const/4 v4, 0x0

    invoke-static {v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 237
    iget-object v3, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 243
    :cond_2
    :goto_0
    return-object v3

    .line 238
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 243
    :catch_1
    move-exception v4

    goto :goto_0

    .line 241
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    .line 242
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 243
    :cond_3
    :goto_1
    throw v3

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public static getImageMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 209
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 210
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 211
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 212
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 213
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    return-object v1
.end method

.method public static getImageMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 191
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAMimeUtil;->getImageMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 155
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "extension":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 158
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAMimeUtil;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 109
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 132
    :cond_0
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "extension":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 134
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAMimeUtil;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 168
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
