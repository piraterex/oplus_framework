.class public final Landroid/media/tv/DsmccResponse;
.super Landroid/media/tv/BroadcastInfoResponse;
.source "DsmccResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/DsmccResponse$BiopMessageType;
    }
.end annotation


# static fields
.field public static final whitelist BIOP_MESSAGE_TYPE_DIRECTORY:Ljava/lang/String; = "directory"

.field public static final whitelist BIOP_MESSAGE_TYPE_FILE:Ljava/lang/String; = "file"

.field public static final whitelist BIOP_MESSAGE_TYPE_SERVICE_GATEWAY:Ljava/lang/String; = "service_gateway"

.field public static final whitelist BIOP_MESSAGE_TYPE_STREAM:Ljava/lang/String; = "stream"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/DsmccResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESPONSE_TYPE:I = 0x6


# instance fields
.field private final blacklist mBiopMessageType:Ljava/lang/String;

.field private final blacklist mChildList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEventIds:[I

.field private final blacklist mEventNames:[Ljava/lang/String;

.field private final blacklist mFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Landroid/media/tv/DsmccResponse$1;

    invoke-direct {v0}, Landroid/media/tv/DsmccResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/DsmccResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILandroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "sequence"    # I
    .param p3, "responseResult"    # I
    .param p4, "file"    # Landroid/os/ParcelFileDescriptor;

    .line 88
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 89
    const-string v0, "file"

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 92
    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 93
    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor whitelist <init>(IIIZLjava/util/List;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "sequence"    # I
    .param p3, "responseResult"    # I
    .param p4, "isServiceGateway"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p5, "childList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 102
    if-eqz p4, :cond_0

    .line 103
    const-string v0, "service_gateway"

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_0
    const-string v0, "directory"

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 107
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 108
    iput-object p5, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 109
    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 110
    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor whitelist <init>(III[I[Ljava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "sequence"    # I
    .param p3, "responseResult"    # I
    .param p4, "eventIds"    # [I
    .param p5, "eventNames"    # [Ljava/lang/String;

    .line 121
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 122
    const-string v0, "stream"

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 124
    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 125
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    array-length v0, p4

    array-length v1, p5

    if-eq v0, v1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    if-nez p5, :cond_2

    .line 129
    :cond_1
    iput-object p4, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 130
    iput-object p5, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 131
    return-void

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The size of eventIds and eventNames must be equal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 134
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "service_gateway"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unexpected BIOP message type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .local v0, "eventNum":I
    if-lez v0, :cond_2

    .line 161
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 162
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 163
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_1

    .line 164
    iget-object v3, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 165
    iget-object v3, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    :cond_1
    goto :goto_3

    .line 168
    :cond_2
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 169
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 171
    :goto_3
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 172
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 173
    goto :goto_6

    .line 153
    .end local v0    # "eventNum":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 154
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 155
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 156
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 157
    goto :goto_6

    .line 140
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    .local v0, "childNum":I
    if-lez v0, :cond_4

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 143
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_3

    .line 144
    iget-object v3, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2    # "i":I
    :cond_3
    goto :goto_5

    .line 147
    :cond_4
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 148
    :goto_5
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 149
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 150
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 151
    nop

    .line 177
    .end local v0    # "childNum":I
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x395fe193 -> :sswitch_3
        -0x3935d146 -> :sswitch_2
        -0x352ab080 -> :sswitch_1
        0x2ff57c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/DsmccResponse;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 80
    new-instance v0, Landroid/media/tv/DsmccResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/DsmccResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBiopMessageType()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getChildList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string v1, "directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 205
    const-string v1, "service_gateway"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not directory object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object v0
.end method

.method public whitelist getFile()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 192
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not file object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getStreamEventIds()[I
    .locals 2

    .line 216
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    return-object v0

    .line 217
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not stream event object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getStreamEventNames()[Ljava/lang/String;
    .locals 2

    .line 227
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    .line 228
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not stream event object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 240
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 241
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "service_gateway"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v1, "directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unexpected BIOP message type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_0
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 258
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 260
    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_1
    goto :goto_4

    .line 264
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    goto :goto_4

    .line 254
    :pswitch_1
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 255
    goto :goto_4

    .line 245
    :pswitch_2
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 246
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    .local v1, "child":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    .end local v1    # "child":Ljava/lang/String;
    goto :goto_3

    :cond_3
    goto :goto_4

    .line 251
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    nop

    .line 269
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x395fe193 -> :sswitch_3
        -0x3935d146 -> :sswitch_2
        -0x352ab080 -> :sswitch_1
        0x2ff57c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
