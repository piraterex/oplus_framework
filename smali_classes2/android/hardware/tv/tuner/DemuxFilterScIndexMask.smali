.class public final Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;
.super Ljava/lang/Object;
.source "DemuxFilterScIndexMask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxFilterScIndexMask$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist scAvc:I = 0x1

.field public static final blacklist scHevc:I = 0x2

.field public static final blacklist scIndex:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tag:I

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_value:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tag:I

    .line 27
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_value:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->readFromParcel(Landroid/os/Parcel;)V

    .line 23
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxFilterScIndexMask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 143
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 146
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 158
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tag:I

    .line 159
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_value:Ljava/lang/Object;

    .line 160
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 149
    packed-switch p1, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_0
    const-string v0, "scHevc"

    return-object v0

    .line 151
    :pswitch_1
    const-string v0, "scAvc"

    return-object v0

    .line 150
    :pswitch_2
    const-string v0, "scIndex"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist scAvc(I)Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;
    .locals 3
    .param p0, "_value"    # I

    .line 52
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist scHevc(I)Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;
    .locals 3
    .param p0, "_value"    # I

    .line 67
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist scIndex(I)Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;
    .locals 3
    .param p0, "_value"    # I

    .line 37
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->getTag()I

    .line 139
    return v0
.end method

.method public blacklist getScAvc()I
    .locals 1

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_assertTag(I)V

    .line 57
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getScHevc()I
    .locals 1

    .line 71
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_assertTag(I)V

    .line 72
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getScIndex()I
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_assertTag(I)V

    .line 42
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 31
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 129
    return-void

    .line 122
    .end local v1    # "_aidl_value":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 124
    return-void

    .line 117
    .end local v1    # "_aidl_value":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 119
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setScAvc(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 62
    return-void
.end method

.method public blacklist setScHevc(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method public blacklist setScIndex(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_set(ILjava/lang/Object;)V

    .line 47
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 97
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->getScHevc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->getScAvc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    goto :goto_0

    .line 100
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->getScIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    nop

    .line 109
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
