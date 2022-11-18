.class public Landroid/graphics/fonts/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontManager$ResultCode;
    }
.end annotation


# static fields
.field public static final whitelist RESULT_ERROR_DOWNGRADING:I = -0x5

.field public static final blacklist RESULT_ERROR_FAILED_TO_OPEN_FONT_FILE:I = -0x2711

.field public static final blacklist RESULT_ERROR_FAILED_TO_OPEN_SIGNATURE_FILE:I = -0x2712

.field public static final blacklist RESULT_ERROR_FAILED_TO_OPEN_XML_FILE:I = -0x2716

.field public static final whitelist RESULT_ERROR_FAILED_TO_WRITE_FONT_FILE:I = -0x1

.field public static final whitelist RESULT_ERROR_FAILED_UPDATE_CONFIG:I = -0x6

.field public static final whitelist RESULT_ERROR_FONT_NOT_FOUND:I = -0x9

.field public static final whitelist RESULT_ERROR_FONT_UPDATER_DISABLED:I = -0x7

.field public static final whitelist RESULT_ERROR_INVALID_FONT_FILE:I = -0x3

.field public static final whitelist RESULT_ERROR_INVALID_FONT_NAME:I = -0x4

.field public static final blacklist RESULT_ERROR_INVALID_SHELL_ARGUMENT:I = -0x2713

.field public static final blacklist RESULT_ERROR_INVALID_SIGNATURE_FILE:I = -0x2714

.field public static final blacklist RESULT_ERROR_INVALID_XML:I = -0x2717

.field public static final blacklist RESULT_ERROR_SIGNATURE_TOO_LARGE:I = -0x2715

.field public static final whitelist RESULT_ERROR_VERIFICATION_FAILURE:I = -0x2

.field public static final whitelist RESULT_ERROR_VERSION_MISMATCH:I = -0x8

.field public static final whitelist RESULT_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "FontManager"


# instance fields
.field private final blacklist mIFontManager:Lcom/android/internal/graphics/fonts/IFontManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/graphics/fonts/IFontManager;)V
    .locals 0
    .param p1, "iFontManager"    # Lcom/android/internal/graphics/fonts/IFontManager;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Landroid/graphics/fonts/FontManager;->mIFontManager:Lcom/android/internal/graphics/fonts/IFontManager;

    .line 203
    return-void
.end method

.method public static blacklist create(Lcom/android/internal/graphics/fonts/IFontManager;)Landroid/graphics/fonts/FontManager;
    .locals 1
    .param p0, "iFontManager"    # Lcom/android/internal/graphics/fonts/IFontManager;

    .line 306
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v0, Landroid/graphics/fonts/FontManager;

    invoke-direct {v0, p0}, Landroid/graphics/fonts/FontManager;-><init>(Lcom/android/internal/graphics/fonts/IFontManager;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getFontConfig()Landroid/text/FontConfig;
    .locals 2

    .line 218
    :try_start_0
    iget-object v0, p0, Landroid/graphics/fonts/FontManager;->mIFontManager:Lcom/android/internal/graphics/fonts/IFontManager;

    invoke-interface {v0}, Lcom/android/internal/graphics/fonts/IFontManager;->getFontConfig()Landroid/text/FontConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateFontFamily(Landroid/graphics/fonts/FontFamilyUpdateRequest;I)I
    .locals 8
    .param p1, "request"    # Landroid/graphics/fonts/FontFamilyUpdateRequest;
    .param p2, "baseVersion"    # I

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v0, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    invoke-virtual {p1}, Landroid/graphics/fonts/FontFamilyUpdateRequest;->getFontFileUpdateRequests()Ljava/util/List;

    move-result-object v1

    .line 280
    .local v1, "fontFileUpdateRequests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFileUpdateRequest;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 281
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontFileUpdateRequest;

    .line 282
    .local v3, "fontFile":Landroid/graphics/fonts/FontFileUpdateRequest;
    new-instance v4, Landroid/graphics/fonts/FontUpdateRequest;

    invoke-virtual {v3}, Landroid/graphics/fonts/FontFileUpdateRequest;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 283
    invoke-virtual {v3}, Landroid/graphics/fonts/FontFileUpdateRequest;->getSignature()[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/fonts/FontUpdateRequest;-><init>(Landroid/os/ParcelFileDescriptor;[B)V

    .line 282
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v3    # "fontFile":Landroid/graphics/fonts/FontFileUpdateRequest;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/fonts/FontFamilyUpdateRequest;->getFontFamilies()Ljava/util/List;

    move-result-object v2

    .line 286
    .local v2, "fontFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 287
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;

    .line 288
    .local v4, "fontFamily":Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;
    new-instance v5, Landroid/graphics/fonts/FontUpdateRequest;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;->getFonts()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/fonts/FontUpdateRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v4    # "fontFamily":Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 291
    .end local v3    # "i":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/graphics/fonts/FontManager;->mIFontManager:Lcom/android/internal/graphics/fonts/IFontManager;

    invoke-interface {v3, v0, p2}, Lcom/android/internal/graphics/fonts/IFontManager;->updateFontFamily(Ljava/util/List;I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 292
    :catch_0
    move-exception v3

    .line 293
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method
