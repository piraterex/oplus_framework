.class public final Landroid/view/inputmethod/CursorAnchorInfo$Builder;
.super Ljava/lang/Object;
.source "CursorAnchorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/CursorAnchorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

.field private greylist-max-o mComposingText:Ljava/lang/CharSequence;

.field private greylist-max-o mComposingTextStart:I

.field private blacklist mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

.field private greylist-max-o mInsertionMarkerBaseline:F

.field private greylist-max-o mInsertionMarkerBottom:F

.field private greylist-max-o mInsertionMarkerFlags:I

.field private greylist-max-o mInsertionMarkerHorizontal:F

.field private greylist-max-o mInsertionMarkerTop:F

.field private greylist-max-o mMatrixInitialized:Z

.field private greylist-max-o mMatrixValues:[F

.field private greylist-max-o mSelectionEnd:I

.field private greylist-max-o mSelectionStart:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCharacterBoundsArrayBuilder(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmComposingText(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmComposingTextStart(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEditorBoundsInfo(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerBaseline(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerBottom(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerFlags(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerHorizontal(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerTop(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMatrixInitialized(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMatrixValues(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionEnd(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionStart(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    .line 274
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    .line 275
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    .line 277
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    .line 278
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    .line 279
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    .line 280
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    .line 281
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    .line 282
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    .line 283
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    .line 284
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    .line 285
    iput-boolean v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    return-void
.end method


# virtual methods
.method public whitelist addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 8
    .param p1, "index"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "flags"    # I

    .line 363
    if-ltz p1, :cond_1

    .line 366
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    invoke-direct {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    .line 369
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->append(IFFFFI)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    .line 370
    return-object p0

    .line 364
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must not be a negative integer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 3

    .line 404
    iget-boolean v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    if-nez v0, :cond_2

    .line 407
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 409
    .local v0, "hasCharacterBounds":Z
    :goto_0
    if-nez v0, :cond_1

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    .line 410
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    .line 411
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    .line 412
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    .line 413
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 414
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Coordinate transformation matrix is required when positional parameters are specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    .end local v0    # "hasCharacterBounds":Z
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/view/inputmethod/CursorAnchorInfo;->-$$Nest$smcreate(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist reset()V
    .locals 3

    .line 426
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    .line 427
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    .line 428
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    .line 430
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    .line 431
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    .line 432
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    .line 433
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    .line 434
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    .line 435
    iput-boolean v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    .line 436
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {v1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->reset()V

    .line 439
    :cond_0
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    .line 440
    return-void
.end method

.method public whitelist setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 1
    .param p1, "composingTextStart"    # I
    .param p2, "composingText"    # Ljava/lang/CharSequence;

    .line 305
    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    .line 306
    if-nez p2, :cond_0

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 310
    :cond_0
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    .line 312
    :goto_0
    return-object p0
.end method

.method public whitelist setEditorBoundsInfo(Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 0
    .param p1, "bounds"    # Landroid/view/inputmethod/EditorBoundsInfo;

    .line 380
    iput-object p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    .line 381
    return-object p0
.end method

.method public whitelist setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 0
    .param p1, "horizontalPosition"    # F
    .param p2, "lineTop"    # F
    .param p3, "lineBaseline"    # F
    .param p4, "lineBottom"    # F
    .param p5, "flags"    # I

    .line 338
    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    .line 339
    iput p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    .line 340
    iput p3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    .line 341
    iput p4, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    .line 342
    iput p5, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    .line 343
    return-object p0
.end method

.method public whitelist setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 390
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    if-nez v0, :cond_0

    .line 391
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    .line 393
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    .line 395
    return-object p0
.end method

.method public whitelist setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 0
    .param p1, "newStart"    # I
    .param p2, "newEnd"    # I

    .line 292
    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    .line 293
    iput p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    .line 294
    return-object p0
.end method
