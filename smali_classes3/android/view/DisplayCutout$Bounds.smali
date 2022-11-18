.class Landroid/view/DisplayCutout$Bounds;
.super Ljava/lang/Object;
.source "DisplayCutout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bounds"
.end annotation


# instance fields
.field private final blacklist mRects:[Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/DisplayCutout$Bounds;->getRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Landroid/view/DisplayCutout$Bounds;->getRects()[Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/view/DisplayCutout$Bounds;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/DisplayCutout$Bounds;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mscale(Landroid/view/DisplayCutout$Bounds;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/DisplayCutout$Bounds;->scale(F)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "left"    # Landroid/graphics/Rect;
    .param p2, "top"    # Landroid/graphics/Rect;
    .param p3, "right"    # Landroid/graphics/Rect;
    .param p4, "bottom"    # Landroid/graphics/Rect;
    .param p5, "copyArguments"    # Z

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    .line 174
    invoke-static {p1, p5}, Landroid/view/DisplayCutout;->-$$Nest$smgetCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 175
    invoke-static {p2, p5}, Landroid/view/DisplayCutout;->-$$Nest$smgetCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 176
    invoke-static {p3, p5}, Landroid/view/DisplayCutout;->-$$Nest$smgetCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 177
    invoke-static {p4, p5}, Landroid/view/DisplayCutout;->-$$Nest$smgetCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 179
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private constructor blacklist <init>([Landroid/graphics/Rect;Z)V
    .locals 5
    .param p1, "rects"    # [Landroid/graphics/Rect;
    .param p2, "copyArguments"    # Z

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 186
    if-eqz p2, :cond_1

    .line 187
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 189
    iget-object v2, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v2, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 192
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 193
    .local v2, "rect":Landroid/graphics/Rect;
    if-eqz v2, :cond_2

    .line 192
    .end local v2    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 194
    .restart local v2    # "rect":Landroid/graphics/Rect;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rects must have non-null elements: rects="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_3
    iput-object p1, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    .line 201
    :goto_2
    return-void

    .line 183
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rects must have exactly 4 elements: rects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private blacklist getRect(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "pos"    # I

    .line 213
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private blacklist getRects()[Landroid/graphics/Rect;
    .locals 5

    .line 217
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Rect;

    .line 218
    .local v1, "rects":[Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 219
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v1, v2

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private blacklist isEmpty()Z
    .locals 6

    .line 204
    iget-object v0, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 205
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    return v2

    .line 204
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist scale(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 226
    iget-object v1, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 241
    if-ne p1, p0, :cond_0

    .line 242
    const/4 v0, 0x1

    return v0

    .line 244
    :cond_0
    instance-of v0, p1, Landroid/view/DisplayCutout$Bounds;

    if-eqz v0, :cond_1

    .line 245
    move-object v0, p1

    check-cast v0, Landroid/view/DisplayCutout$Bounds;

    .line 246
    .local v0, "b":Landroid/view/DisplayCutout$Bounds;
    iget-object v1, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    iget-object v2, v0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 248
    .end local v0    # "b":Landroid/view/DisplayCutout$Bounds;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "result":I
    iget-object v1, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 234
    .local v4, "rect":Landroid/graphics/Rect;
    const v5, 0xbc8f

    mul-int/2addr v5, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    .line 233
    .end local v4    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    :cond_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
