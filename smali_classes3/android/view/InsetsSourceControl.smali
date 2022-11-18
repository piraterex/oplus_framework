.class public Landroid/view/InsetsSourceControl;
.super Ljava/lang/Object;
.source "InsetsSourceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INVALID_HINTS:Landroid/graphics/Insets;


# instance fields
.field private blacklist mInsetsHint:Landroid/graphics/Insets;

.field private final blacklist mLeash:Landroid/view/SurfaceControl;

.field private blacklist mParcelableFlags:I

.field private blacklist mSkipAnimationOnce:Z

.field private final blacklist mSurfacePosition:Landroid/graphics/Point;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    const/4 v0, -0x1

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    sput-object v0, Landroid/view/InsetsSourceControl;->INVALID_HINTS:Landroid/graphics/Insets;

    .line 209
    new-instance v0, Landroid/view/InsetsSourceControl$1;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/view/SurfaceControl;Landroid/graphics/Point;Landroid/graphics/Insets;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "surfacePosition"    # Landroid/graphics/Point;
    .param p4, "insetsHint"    # Landroid/graphics/Insets;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Landroid/view/InsetsSourceControl;->mType:I

    .line 58
    iput-object p2, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 59
    iput-object p3, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    .line 60
    iput-object p4, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    .line 77
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 78
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    .line 79
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsSourceControl;)V
    .locals 3
    .param p1, "other"    # Landroid/view/InsetsSourceControl;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget v0, p1, Landroid/view/InsetsSourceControl;->mType:I

    iput v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    .line 65
    iget-object v0, p1, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    const-string v2, "InsetsSourceControl"

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 70
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p1, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    .line 71
    iget-object v0, p1, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 72
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    const-string v0, "InsetsSourceControl type="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-static {v0}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    const-string v0, " mLeash="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 203
    const-string v0, " mSurfacePosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 204
    const-string v0, " mInsetsHint="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 205
    const-string v0, " mSkipAnimationOnce="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 206
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 207
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 227
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 228
    .local v0, "token":J
    iget v2, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-static {v2}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 230
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 231
    .local v2, "surfaceToken":J
    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 232
    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    const-wide v5, 0x10500000002L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 233
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 235
    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_0

    .line 236
    const-wide v5, 0x10b00000003L

    invoke-virtual {v4, p1, v5, v6}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 238
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 239
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 164
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 165
    return v0

    .line 167
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/InsetsSourceControl;

    .line 171
    .local v2, "that":Landroid/view/InsetsSourceControl;
    iget-object v3, v2, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 172
    .local v3, "thatLeash":Landroid/view/SurfaceControl;
    iget v4, p0, Landroid/view/InsetsSourceControl;->mType:I

    iget v5, v2, Landroid/view/InsetsSourceControl;->mType:I

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eq v4, v3, :cond_2

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 174
    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget-object v5, v2, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    .line 175
    invoke-virtual {v4, v5}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iget-object v5, v2, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 176
    invoke-virtual {v4, v5}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    iget-boolean v5, v2, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    if-ne v4, v5, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 172
    :goto_0
    return v0

    .line 168
    .end local v2    # "that":Landroid/view/InsetsSourceControl;
    .end local v3    # "thatLeash":Landroid/view/SurfaceControl;
    :cond_4
    :goto_1
    return v1
.end method

.method public blacklist getAndClearSkipAnimationOnce()Z
    .locals 2

    .line 133
    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 134
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 135
    return v0
.end method

.method public blacklist getInsetsHint()Landroid/graphics/Insets;
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getLeash()Landroid/view/SurfaceControl;
    .locals 1

    .line 94
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getSurfacePosition()Landroid/graphics/Point;
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 84
    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 182
    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    .line 183
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 184
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Point;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 185
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {v2}, Landroid/graphics/Insets;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 186
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    add-int/2addr v0, v2

    .line 187
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist release(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "surfaceReleaseConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl;>;"
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 160
    :cond_0
    return-void
.end method

.method public blacklist setInsetsHint(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 114
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 115
    return-void
.end method

.method public blacklist setInsetsHint(Landroid/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 110
    iput-object p1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 111
    return-void
.end method

.method public blacklist setParcelableFlags(I)V
    .locals 0
    .param p1, "parcelableFlags"    # I

    .line 139
    iput p1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    .line 140
    return-void
.end method

.method public blacklist setSkipAnimationOnce(Z)V
    .locals 0
    .param p1, "skipAnimation"    # Z

    .line 122
    iput-boolean p1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 123
    return-void
.end method

.method public blacklist setSurfacePosition(II)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I

    .line 98
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsSourceControl: {type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSourceControl;->mType:I

    .line 193
    invoke-static {v1}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSurfacePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInsetsHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 149
    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 152
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iget v1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 154
    return-void
.end method
