.class Landroid/media/tv/BroadcastInfoRequest$1;
.super Ljava/lang/Object;
.source "BroadcastInfoRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/BroadcastInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/BroadcastInfoRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/BroadcastInfoRequest;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 74
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected broadcast info request type (value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in parcel."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :pswitch_0
    invoke-static {p1}, Landroid/media/tv/TimelineRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TimelineRequest;

    move-result-object v1

    return-object v1

    .line 70
    :pswitch_1
    invoke-static {p1}, Landroid/media/tv/CommandRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/CommandRequest;

    move-result-object v1

    return-object v1

    .line 68
    :pswitch_2
    invoke-static {p1}, Landroid/media/tv/DsmccRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/DsmccRequest;

    move-result-object v1

    return-object v1

    .line 66
    :pswitch_3
    invoke-static {p1}, Landroid/media/tv/StreamEventRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/StreamEventRequest;

    move-result-object v1

    return-object v1

    .line 64
    :pswitch_4
    invoke-static {p1}, Landroid/media/tv/PesRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/PesRequest;

    move-result-object v1

    return-object v1

    .line 62
    :pswitch_5
    invoke-static {p1}, Landroid/media/tv/SectionRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/SectionRequest;

    move-result-object v1

    return-object v1

    .line 60
    :pswitch_6
    invoke-static {p1}, Landroid/media/tv/TableRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TableRequest;

    move-result-object v1

    return-object v1

    .line 58
    :pswitch_7
    invoke-static {p1}, Landroid/media/tv/TsRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TsRequest;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Landroid/media/tv/BroadcastInfoRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/BroadcastInfoRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/tv/BroadcastInfoRequest;
    .locals 1
    .param p1, "size"    # I

    .line 82
    new-array v0, p1, [Landroid/media/tv/BroadcastInfoRequest;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Landroid/media/tv/BroadcastInfoRequest$1;->newArray(I)[Landroid/media/tv/BroadcastInfoRequest;

    move-result-object p1

    return-object p1
.end method
