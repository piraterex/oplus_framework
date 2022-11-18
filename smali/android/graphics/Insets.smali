.class public final Landroid/graphics/Insets;
.super Ljava/lang/Object;
.source "Insets.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NONE:Landroid/graphics/Insets;


# instance fields
.field public final whitelist bottom:I

.field public final whitelist left:I

.field public final whitelist right:I

.field public final whitelist top:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Landroid/graphics/Insets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Insets;-><init>(IIII)V

    sput-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 187
    new-instance v0, Landroid/graphics/Insets$1;

    invoke-direct {v0}, Landroid/graphics/Insets$1;-><init>()V

    sput-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/graphics/Insets;->left:I

    .line 42
    iput p2, p0, Landroid/graphics/Insets;->top:I

    .line 43
    iput p3, p0, Landroid/graphics/Insets;->right:I

    .line 44
    iput p4, p0, Landroid/graphics/Insets;->bottom:I

    .line 45
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIILandroid/graphics/Insets-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Insets;-><init>(IIII)V

    return-void
.end method

.method public static whitelist add(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 5
    .param p0, "a"    # Landroid/graphics/Insets;
    .param p1, "b"    # Landroid/graphics/Insets;

    .line 94
    iget v0, p0, Landroid/graphics/Insets;->left:I

    iget v1, p1, Landroid/graphics/Insets;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Insets;->top:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/graphics/Insets;->right:I

    iget v3, p1, Landroid/graphics/Insets;->right:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/graphics/Insets;->bottom:I

    iget v4, p1, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 5
    .param p0, "a"    # Landroid/graphics/Insets;
    .param p1, "b"    # Landroid/graphics/Insets;

    .line 116
    iget v0, p0, Landroid/graphics/Insets;->left:I

    iget v1, p1, Landroid/graphics/Insets;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Insets;->top:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Landroid/graphics/Insets;->right:I

    iget v3, p1, Landroid/graphics/Insets;->right:I

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroid/graphics/Insets;->bottom:I

    iget v4, p1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 116
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 5
    .param p0, "a"    # Landroid/graphics/Insets;
    .param p1, "b"    # Landroid/graphics/Insets;

    .line 128
    iget v0, p0, Landroid/graphics/Insets;->left:I

    iget v1, p1, Landroid/graphics/Insets;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Insets;->top:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Landroid/graphics/Insets;->right:I

    iget v3, p1, Landroid/graphics/Insets;->right:I

    .line 129
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Landroid/graphics/Insets;->bottom:I

    iget v4, p1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 128
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist of(IIII)Landroid/graphics/Insets;
    .locals 1
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .line 60
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 61
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Landroid/graphics/Insets;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Insets;-><init>(IIII)V

    return-object v0
.end method

.method public static whitelist of(Landroid/graphics/Rect;)Landroid/graphics/Insets;
    .locals 4
    .param p0, "r"    # Landroid/graphics/Rect;

    .line 74
    if-nez p0, :cond_0

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static whitelist subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 5
    .param p0, "a"    # Landroid/graphics/Insets;
    .param p1, "b"    # Landroid/graphics/Insets;

    .line 105
    iget v0, p0, Landroid/graphics/Insets;->left:I

    iget v1, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Insets;->top:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/graphics/Insets;->right:I

    iget v3, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/graphics/Insets;->bottom:I

    iget v4, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 142
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 143
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/graphics/Insets;

    .line 147
    .local v2, "insets":Landroid/graphics/Insets;
    iget v3, p0, Landroid/graphics/Insets;->bottom:I

    iget v4, v2, Landroid/graphics/Insets;->bottom:I

    if-eq v3, v4, :cond_2

    return v1

    .line 148
    :cond_2
    iget v3, p0, Landroid/graphics/Insets;->left:I

    iget v4, v2, Landroid/graphics/Insets;->left:I

    if-eq v3, v4, :cond_3

    return v1

    .line 149
    :cond_3
    iget v3, p0, Landroid/graphics/Insets;->right:I

    iget v4, v2, Landroid/graphics/Insets;->right:I

    if-eq v3, v4, :cond_4

    return v1

    .line 150
    :cond_4
    iget v3, p0, Landroid/graphics/Insets;->top:I

    iget v4, v2, Landroid/graphics/Insets;->top:I

    if-eq v3, v4, :cond_5

    return v1

    .line 152
    :cond_5
    return v0

    .line 143
    .end local v2    # "insets":Landroid/graphics/Insets;
    :cond_6
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 157
    iget v0, p0, Landroid/graphics/Insets;->left:I

    .line 158
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Insets;->top:I

    add-int/2addr v1, v2

    .line 159
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/graphics/Insets;->right:I

    add-int/2addr v0, v2

    .line 160
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v1, v2

    .line 161
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist toRect()Landroid/graphics/Rect;
    .locals 5

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Insets;->left:I

    iget v2, p0, Landroid/graphics/Insets;->top:I

    iget v3, p0, Landroid/graphics/Insets;->right:I

    iget v4, p0, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insets{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Insets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Insets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Insets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 181
    iget v0, p0, Landroid/graphics/Insets;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/graphics/Insets;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Landroid/graphics/Insets;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    return-void
.end method
