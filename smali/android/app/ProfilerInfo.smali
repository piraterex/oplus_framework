.class public Landroid/app/ProfilerInfo;
.super Ljava/lang/Object;
.source "ProfilerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ProfilerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ProfilerInfo"


# instance fields
.field public final greylist-max-o agent:Ljava/lang/String;

.field public final greylist-max-o attachAgentDuringBind:Z

.field public final greylist-max-o autoStopProfiler:Z

.field public greylist-max-o profileFd:Landroid/os/ParcelFileDescriptor;

.field public final greylist-max-o profileFile:Ljava/lang/String;

.field public final greylist-max-o samplingInterval:I

.field public final greylist-max-o streamingOutput:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 152
    new-instance v0, Landroid/app/ProfilerInfo$1;

    invoke-direct {v0}, Landroid/app/ProfilerInfo$1;-><init>()V

    sput-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/ProfilerInfo;)V
    .locals 1
    .param p1, "in"    # Landroid/app/ProfilerInfo;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 83
    iget v0, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 84
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 85
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 86
    iget-object v0, p1, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 87
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 88
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 173
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ProfilerInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ProfilerInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "interval"    # I
    .param p4, "autoStop"    # Z
    .param p5, "streaming"    # Z
    .param p6, "agent"    # Ljava/lang/String;
    .param p7, "attachAgentDuringBind"    # Z

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 73
    iput p3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    .line 74
    iput-boolean p4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    .line 75
    iput-boolean p5, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    .line 76
    iput-object p6, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 77
    iput-boolean p7, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    .line 78
    return-void
.end method


# virtual methods
.method public greylist-max-o closeFd()V
    .locals 3

    .line 103
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ProfilerInfo"

    const-string v2, "Failure closing profile fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 111
    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    return v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 140
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 141
    .local v0, "token":J
    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 142
    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    .line 143
    const-wide v3, 0x10500000002L

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 145
    :cond_0
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 146
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 147
    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 148
    const-wide v2, 0x10900000006L

    iget-object v4, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 149
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 150
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 177
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 178
    return v0

    .line 180
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/ProfilerInfo;

    .line 185
    .local v2, "other":Landroid/app/ProfilerInfo;
    iget-object v3, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iget-boolean v4, v2, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iget v4, v2, Landroid/app/ProfilerInfo;->samplingInterval:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iget-boolean v4, v2, Landroid/app/ProfilerInfo;->streamingOutput:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    .line 189
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 185
    :goto_0
    return v0

    .line 181
    .end local v2    # "other":Landroid/app/ProfilerInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 194
    const/16 v0, 0x11

    .line 195
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 196
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    add-int/2addr v0, v2

    .line 197
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    add-int/2addr v1, v2

    .line 198
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    add-int/2addr v0, v2

    .line 199
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 200
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public greylist-max-o setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;
    .locals 9
    .param p1, "agent"    # Ljava/lang/String;
    .param p2, "attachAgentDuringBind"    # Z

    .line 95
    new-instance v8, Landroid/app/ProfilerInfo;

    iget-object v1, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget v3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    iget-boolean v4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iget-boolean v5, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    move-object v0, v8

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    return-object v8
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 129
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    :goto_0
    iget v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 136
    return-void
.end method
