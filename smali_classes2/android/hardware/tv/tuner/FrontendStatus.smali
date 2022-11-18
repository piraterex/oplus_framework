.class public final Landroid/hardware/tv/tuner/FrontendStatus;
.super Ljava/lang/Object;
.source "FrontendStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/FrontendStatus$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist agc:I = 0xe

.field public static final blacklist allPlpInfo:I = 0x29

.field public static final blacklist bandwidth:I = 0x19

.field public static final blacklist ber:I = 0x2

.field public static final blacklist bers:I = 0x17

.field public static final blacklist codeRates:I = 0x18

.field public static final blacklist dvbtCellIds:I = 0x28

.field public static final blacklist freqOffset:I = 0x12

.field public static final blacklist hierarchy:I = 0x13

.field public static final blacklist innerFec:I = 0x8

.field public static final blacklist interleaving:I = 0x1e

.field public static final blacklist interval:I = 0x1a

.field public static final blacklist inversion:I = 0xa

.field public static final blacklist isDemodLocked:I = 0x0

.field public static final blacklist isEWBS:I = 0xd

.field public static final blacklist isLayerError:I = 0x10

.field public static final blacklist isLinear:I = 0x23

.field public static final blacklist isLnaOn:I = 0xf

.field public static final blacklist isMiso:I = 0x22

.field public static final blacklist isRfLocked:I = 0x14

.field public static final blacklist isShortFrames:I = 0x24

.field public static final blacklist isdbtMode:I = 0x25

.field public static final blacklist isdbtSegment:I = 0x1f

.field public static final blacklist lnbVoltage:I = 0xb

.field public static final blacklist mer:I = 0x11

.field public static final blacklist modulationStatus:I = 0x9

.field public static final blacklist modulations:I = 0x16

.field public static final blacklist partialReceptionFlag:I = 0x26

.field public static final blacklist per:I = 0x3

.field public static final blacklist plpId:I = 0xc

.field public static final blacklist plpInfo:I = 0x15

.field public static final blacklist preBer:I = 0x4

.field public static final blacklist rollOff:I = 0x21

.field public static final blacklist signalQuality:I = 0x5

.field public static final blacklist signalStrength:I = 0x6

.field public static final blacklist snr:I = 0x1

.field public static final blacklist streamIdList:I = 0x27

.field public static final blacklist symbolRate:I = 0x7

.field public static final blacklist systemId:I = 0x1d

.field public static final blacklist transmissionMode:I = 0x1b

.field public static final blacklist tsDataRate:I = 0x20

.field public static final blacklist uec:I = 0x1c


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 708
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    .line 66
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    .line 67
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/FrontendStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 1120
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1123
    return-void

    .line 1121
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_tagString(I)Ljava/lang/String;

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

    .line 1174
    iput p1, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    .line 1175
    iput-object p2, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    .line 1176
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 1126
    packed-switch p1, :pswitch_data_0

    .line 1170
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

    .line 1168
    :pswitch_0
    const-string v0, "allPlpInfo"

    return-object v0

    .line 1167
    :pswitch_1
    const-string v0, "dvbtCellIds"

    return-object v0

    .line 1166
    :pswitch_2
    const-string v0, "streamIdList"

    return-object v0

    .line 1165
    :pswitch_3
    const-string v0, "partialReceptionFlag"

    return-object v0

    .line 1164
    :pswitch_4
    const-string v0, "isdbtMode"

    return-object v0

    .line 1163
    :pswitch_5
    const-string v0, "isShortFrames"

    return-object v0

    .line 1162
    :pswitch_6
    const-string v0, "isLinear"

    return-object v0

    .line 1161
    :pswitch_7
    const-string v0, "isMiso"

    return-object v0

    .line 1160
    :pswitch_8
    const-string v0, "rollOff"

    return-object v0

    .line 1159
    :pswitch_9
    const-string/jumbo v0, "tsDataRate"

    return-object v0

    .line 1158
    :pswitch_a
    const-string v0, "isdbtSegment"

    return-object v0

    .line 1157
    :pswitch_b
    const-string v0, "interleaving"

    return-object v0

    .line 1156
    :pswitch_c
    const-string v0, "systemId"

    return-object v0

    .line 1155
    :pswitch_d
    const-string/jumbo v0, "uec"

    return-object v0

    .line 1154
    :pswitch_e
    const-string/jumbo v0, "transmissionMode"

    return-object v0

    .line 1153
    :pswitch_f
    const-string v0, "interval"

    return-object v0

    .line 1152
    :pswitch_10
    const-string v0, "bandwidth"

    return-object v0

    .line 1151
    :pswitch_11
    const-string v0, "codeRates"

    return-object v0

    .line 1150
    :pswitch_12
    const-string v0, "bers"

    return-object v0

    .line 1149
    :pswitch_13
    const-string v0, "modulations"

    return-object v0

    .line 1148
    :pswitch_14
    const-string v0, "plpInfo"

    return-object v0

    .line 1147
    :pswitch_15
    const-string v0, "isRfLocked"

    return-object v0

    .line 1146
    :pswitch_16
    const-string v0, "hierarchy"

    return-object v0

    .line 1145
    :pswitch_17
    const-string v0, "freqOffset"

    return-object v0

    .line 1144
    :pswitch_18
    const-string v0, "mer"

    return-object v0

    .line 1143
    :pswitch_19
    const-string v0, "isLayerError"

    return-object v0

    .line 1142
    :pswitch_1a
    const-string v0, "isLnaOn"

    return-object v0

    .line 1141
    :pswitch_1b
    const-string v0, "agc"

    return-object v0

    .line 1140
    :pswitch_1c
    const-string v0, "isEWBS"

    return-object v0

    .line 1139
    :pswitch_1d
    const-string v0, "plpId"

    return-object v0

    .line 1138
    :pswitch_1e
    const-string v0, "lnbVoltage"

    return-object v0

    .line 1137
    :pswitch_1f
    const-string v0, "inversion"

    return-object v0

    .line 1136
    :pswitch_20
    const-string v0, "modulationStatus"

    return-object v0

    .line 1135
    :pswitch_21
    const-string v0, "innerFec"

    return-object v0

    .line 1134
    :pswitch_22
    const-string v0, "symbolRate"

    return-object v0

    .line 1133
    :pswitch_23
    const-string v0, "signalStrength"

    return-object v0

    .line 1132
    :pswitch_24
    const-string v0, "signalQuality"

    return-object v0

    .line 1131
    :pswitch_25
    const-string v0, "preBer"

    return-object v0

    .line 1130
    :pswitch_26
    const-string v0, "per"

    return-object v0

    .line 1129
    :pswitch_27
    const-string v0, "ber"

    return-object v0

    .line 1128
    :pswitch_28
    const-string v0, "snr"

    return-object v0

    .line 1127
    :pswitch_29
    const-string v0, "isDemodLocked"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static blacklist agc(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 286
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist allPlpInfo([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    .line 691
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x29

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist bandwidth(Landroid/hardware/tv/tuner/FrontendBandwidth;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendBandwidth;

    .line 451
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ber(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 106
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist bers([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # [I

    .line 421
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist codeRates([J)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # [J

    .line 436
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 1105
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1106
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 1107
    const/4 v1, 0x0

    .line 1108
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1109
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 1108
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1111
    :cond_1
    return v1

    .line 1113
    .end local v1    # "_mask":I
    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 1114
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 1116
    :cond_3
    return v0
.end method

.method public static blacklist dvbtCellIds([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # [I

    .line 676
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x28

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist freqOffset(J)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # J

    .line 346
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist hierarchy(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 361
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist innerFec(J)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # J

    .line 196
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist interleaving([Landroid/hardware/tv/tuner/FrontendInterleaveMode;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    .line 526
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1e

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist interval(Landroid/hardware/tv/tuner/FrontendGuardInterval;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendGuardInterval;

    .line 466
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist inversion(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 226
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isDemodLocked(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # Z

    .line 76
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isEWBS(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # Z

    .line 271
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isLayerError([Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # [Z

    .line 316
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isLinear(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # Z

    .line 601
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x23

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isLnaOn(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # Z

    .line 301
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isMiso(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # Z

    .line 586
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x22

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isRfLocked(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # Z

    .line 376
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x14

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isShortFrames(Z)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # Z

    .line 616
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x24

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbtMode(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 631
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist isdbtSegment([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # [I

    .line 541
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1f

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist lnbVoltage(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 241
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mer(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 331
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist modulationStatus(Landroid/hardware/tv/tuner/FrontendModulationStatus;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendModulationStatus;

    .line 211
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist modulations([Landroid/hardware/tv/tuner/FrontendModulation;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/tv/tuner/FrontendModulation;

    .line 406
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist partialReceptionFlag(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 646
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist per(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 121
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist plpId(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 256
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist plpInfo([Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    .line 391
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist preBer(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 136
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist rollOff(Landroid/hardware/tv/tuner/FrontendRollOff;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendRollOff;

    .line 571
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x21

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist signalQuality(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 151
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist signalStrength(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 166
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist snr(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 91
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist streamIdList([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # [I

    .line 661
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x27

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist symbolRate(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 181
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist systemId(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 511
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist transmissionMode(Landroid/hardware/tv/tuner/FrontendTransmissionMode;)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    .line 481
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist tsDataRate([I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 2
    .param p0, "_value"    # [I

    .line 556
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    const/16 v1, 0x20

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist uec(I)Landroid/hardware/tv/tuner/FrontendStatus;
    .locals 3
    .param p0, "_value"    # I

    .line 496
    new-instance v0, Landroid/hardware/tv/tuner/FrontendStatus;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/FrontendStatus;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 1072
    const/4 v0, 0x0

    .line 1073
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1099
    :sswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getAllPlpInfo()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 1096
    :sswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getRollOff()Landroid/hardware/tv/tuner/FrontendRollOff;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1097
    goto :goto_0

    .line 1093
    :sswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterleaving()[Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1094
    goto :goto_0

    .line 1090
    :sswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTransmissionMode()Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1091
    goto :goto_0

    .line 1087
    :sswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterval()Landroid/hardware/tv/tuner/FrontendGuardInterval;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1088
    goto :goto_0

    .line 1084
    :sswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBandwidth()Landroid/hardware/tv/tuner/FrontendBandwidth;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1085
    goto :goto_0

    .line 1081
    :sswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulations()[Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1082
    goto :goto_0

    .line 1078
    :sswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPlpInfo()[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1079
    goto :goto_0

    .line 1075
    :sswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulationStatus()Landroid/hardware/tv/tuner/FrontendModulationStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1076
    nop

    .line 1102
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_8
        0x15 -> :sswitch_7
        0x16 -> :sswitch_6
        0x19 -> :sswitch_5
        0x1a -> :sswitch_4
        0x1b -> :sswitch_3
        0x1e -> :sswitch_2
        0x21 -> :sswitch_1
        0x29 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getAgc()I
    .locals 1

    .line 290
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 291
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getAllPlpInfo()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    .locals 1

    .line 695
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 696
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    return-object v0
.end method

.method public blacklist getBandwidth()Landroid/hardware/tv/tuner/FrontendBandwidth;
    .locals 1

    .line 455
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 456
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendBandwidth;

    return-object v0
.end method

.method public blacklist getBer()I
    .locals 1

    .line 110
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 111
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getBers()[I
    .locals 1

    .line 425
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 426
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getCodeRates()[J
    .locals 1

    .line 440
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 441
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [J

    return-object v0
.end method

.method public blacklist getDvbtCellIds()[I
    .locals 1

    .line 680
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 681
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getFreqOffset()J
    .locals 2

    .line 350
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 351
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getHierarchy()I
    .locals 1

    .line 365
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 366
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getInnerFec()J
    .locals 2

    .line 200
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 201
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getInterleaving()[Landroid/hardware/tv/tuner/FrontendInterleaveMode;
    .locals 1

    .line 530
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 531
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    return-object v0
.end method

.method public blacklist getInterval()Landroid/hardware/tv/tuner/FrontendGuardInterval;
    .locals 1

    .line 470
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 471
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendGuardInterval;

    return-object v0
.end method

.method public blacklist getInversion()I
    .locals 1

    .line 230
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 231
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsDemodLocked()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 81
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsEWBS()Z
    .locals 1

    .line 275
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 276
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsLayerError()[Z
    .locals 1

    .line 320
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 321
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Z

    return-object v0
.end method

.method public blacklist getIsLinear()Z
    .locals 1

    .line 605
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 606
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsLnaOn()Z
    .locals 1

    .line 305
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 306
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsMiso()Z
    .locals 1

    .line 590
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 591
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsRfLocked()Z
    .locals 1

    .line 380
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 381
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsShortFrames()Z
    .locals 1

    .line 620
    const/16 v0, 0x24

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 621
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIsdbtMode()I
    .locals 1

    .line 635
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 636
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getIsdbtSegment()[I
    .locals 1

    .line 545
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 546
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getLnbVoltage()I
    .locals 1

    .line 245
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 246
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMer()I
    .locals 1

    .line 335
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 336
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getModulationStatus()Landroid/hardware/tv/tuner/FrontendModulationStatus;
    .locals 1

    .line 215
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 216
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendModulationStatus;

    return-object v0
.end method

.method public blacklist getModulations()[Landroid/hardware/tv/tuner/FrontendModulation;
    .locals 1

    .line 410
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 411
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendModulation;

    return-object v0
.end method

.method public blacklist getPartialReceptionFlag()I
    .locals 1

    .line 650
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 651
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getPer()I
    .locals 1

    .line 125
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 126
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getPlpId()I
    .locals 1

    .line 260
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 261
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getPlpInfo()[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;
    .locals 1

    .line 395
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 396
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    return-object v0
.end method

.method public blacklist getPreBer()I
    .locals 1

    .line 140
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 141
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getRollOff()Landroid/hardware/tv/tuner/FrontendRollOff;
    .locals 1

    .line 575
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 576
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendRollOff;

    return-object v0
.end method

.method public blacklist getSignalQuality()I
    .locals 1

    .line 155
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 156
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getSignalStrength()I
    .locals 1

    .line 170
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 171
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getSnr()I
    .locals 1

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 96
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 705
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStreamIdList()[I
    .locals 1

    .line 665
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 666
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getSymbolRate()I
    .locals 1

    .line 185
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 186
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getSystemId()I
    .locals 1

    .line 515
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 516
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 70
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    return v0
.end method

.method public blacklist getTransmissionMode()Landroid/hardware/tv/tuner/FrontendTransmissionMode;
    .locals 1

    .line 485
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 486
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    return-object v0
.end method

.method public blacklist getTsDataRate()[I
    .locals 1

    .line 560
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 561
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getUec()I
    .locals 1

    .line 500
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_assertTag(I)V

    .line 501
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 855
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 1067
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

    .line 1063
    :pswitch_0
    sget-object v1, Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    .line 1064
    .local v1, "_aidl_value":[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1065
    return-void

    .line 1058
    .end local v1    # "_aidl_value":[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1059
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1060
    return-void

    .line 1053
    .end local v1    # "_aidl_value":[I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1054
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1055
    return-void

    .line 1048
    .end local v1    # "_aidl_value":[I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1049
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1050
    return-void

    .line 1043
    .end local v1    # "_aidl_value":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1044
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1045
    return-void

    .line 1038
    .end local v1    # "_aidl_value":I
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1039
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1040
    return-void

    .line 1033
    .end local v1    # "_aidl_value":Z
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1034
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1035
    return-void

    .line 1028
    .end local v1    # "_aidl_value":Z
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1029
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1030
    return-void

    .line 1023
    .end local v1    # "_aidl_value":Z
    :pswitch_8
    sget-object v1, Landroid/hardware/tv/tuner/FrontendRollOff;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendRollOff;

    .line 1024
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendRollOff;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1025
    return-void

    .line 1018
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendRollOff;
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1019
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1020
    return-void

    .line 1013
    .end local v1    # "_aidl_value":[I
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1014
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1015
    return-void

    .line 1008
    .end local v1    # "_aidl_value":[I
    :pswitch_b
    sget-object v1, Landroid/hardware/tv/tuner/FrontendInterleaveMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    .line 1009
    .local v1, "_aidl_value":[Landroid/hardware/tv/tuner/FrontendInterleaveMode;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1010
    return-void

    .line 1003
    .end local v1    # "_aidl_value":[Landroid/hardware/tv/tuner/FrontendInterleaveMode;
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1004
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1005
    return-void

    .line 998
    .end local v1    # "_aidl_value":I
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 999
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 1000
    return-void

    .line 993
    .end local v1    # "_aidl_value":I
    :pswitch_e
    sget-object v1, Landroid/hardware/tv/tuner/FrontendTransmissionMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    .line 994
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendTransmissionMode;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 995
    return-void

    .line 988
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendTransmissionMode;
    :pswitch_f
    sget-object v1, Landroid/hardware/tv/tuner/FrontendGuardInterval;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendGuardInterval;

    .line 989
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendGuardInterval;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 990
    return-void

    .line 983
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendGuardInterval;
    :pswitch_10
    sget-object v1, Landroid/hardware/tv/tuner/FrontendBandwidth;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendBandwidth;

    .line 984
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendBandwidth;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 985
    return-void

    .line 978
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendBandwidth;
    :pswitch_11
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 979
    .local v1, "_aidl_value":[J
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 980
    return-void

    .line 973
    .end local v1    # "_aidl_value":[J
    :pswitch_12
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 974
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 975
    return-void

    .line 968
    .end local v1    # "_aidl_value":[I
    :pswitch_13
    sget-object v1, Landroid/hardware/tv/tuner/FrontendModulation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendModulation;

    .line 969
    .local v1, "_aidl_value":[Landroid/hardware/tv/tuner/FrontendModulation;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 970
    return-void

    .line 963
    .end local v1    # "_aidl_value":[Landroid/hardware/tv/tuner/FrontendModulation;
    :pswitch_14
    sget-object v1, Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    .line 964
    .local v1, "_aidl_value":[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 965
    return-void

    .line 958
    .end local v1    # "_aidl_value":[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;
    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 959
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 960
    return-void

    .line 953
    .end local v1    # "_aidl_value":Z
    :pswitch_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 954
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 955
    return-void

    .line 948
    .end local v1    # "_aidl_value":I
    :pswitch_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 949
    .local v1, "_aidl_value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 950
    return-void

    .line 943
    .end local v1    # "_aidl_value":J
    :pswitch_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 944
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 945
    return-void

    .line 938
    .end local v1    # "_aidl_value":I
    :pswitch_19
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v1

    .line 939
    .local v1, "_aidl_value":[Z
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 940
    return-void

    .line 933
    .end local v1    # "_aidl_value":[Z
    :pswitch_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 934
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 935
    return-void

    .line 928
    .end local v1    # "_aidl_value":Z
    :pswitch_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 929
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 930
    return-void

    .line 923
    .end local v1    # "_aidl_value":I
    :pswitch_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 924
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 925
    return-void

    .line 918
    .end local v1    # "_aidl_value":Z
    :pswitch_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 919
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 920
    return-void

    .line 913
    .end local v1    # "_aidl_value":I
    :pswitch_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 914
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 915
    return-void

    .line 908
    .end local v1    # "_aidl_value":I
    :pswitch_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 909
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 910
    return-void

    .line 903
    .end local v1    # "_aidl_value":I
    :pswitch_20
    sget-object v1, Landroid/hardware/tv/tuner/FrontendModulationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendModulationStatus;

    .line 904
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/FrontendModulationStatus;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 905
    return-void

    .line 898
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/FrontendModulationStatus;
    :pswitch_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 899
    .local v1, "_aidl_value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 900
    return-void

    .line 893
    .end local v1    # "_aidl_value":J
    :pswitch_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 894
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 895
    return-void

    .line 888
    .end local v1    # "_aidl_value":I
    :pswitch_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 889
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 890
    return-void

    .line 883
    .end local v1    # "_aidl_value":I
    :pswitch_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 884
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 885
    return-void

    .line 878
    .end local v1    # "_aidl_value":I
    :pswitch_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 879
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 880
    return-void

    .line 873
    .end local v1    # "_aidl_value":I
    :pswitch_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 874
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 875
    return-void

    .line 868
    .end local v1    # "_aidl_value":I
    :pswitch_27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 869
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 870
    return-void

    .line 863
    .end local v1    # "_aidl_value":I
    :pswitch_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 864
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 865
    return-void

    .line 858
    .end local v1    # "_aidl_value":I
    :pswitch_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 859
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 860
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public blacklist setAgc(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 295
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 296
    return-void
.end method

.method public blacklist setAllPlpInfo([Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    .line 700
    const/16 v0, 0x29

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 701
    return-void
.end method

.method public blacklist setBandwidth(Landroid/hardware/tv/tuner/FrontendBandwidth;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendBandwidth;

    .line 460
    const/16 v0, 0x19

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 461
    return-void
.end method

.method public blacklist setBer(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 116
    return-void
.end method

.method public blacklist setBers([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 430
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 431
    return-void
.end method

.method public blacklist setCodeRates([J)V
    .locals 1
    .param p1, "_value"    # [J

    .line 445
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 446
    return-void
.end method

.method public blacklist setDvbtCellIds([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 685
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 686
    return-void
.end method

.method public blacklist setFreqOffset(J)V
    .locals 2
    .param p1, "_value"    # J

    .line 355
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x12

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 356
    return-void
.end method

.method public blacklist setHierarchy(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 370
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x13

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 371
    return-void
.end method

.method public blacklist setInnerFec(J)V
    .locals 2
    .param p1, "_value"    # J

    .line 205
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 206
    return-void
.end method

.method public blacklist setInterleaving([Landroid/hardware/tv/tuner/FrontendInterleaveMode;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    .line 535
    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 536
    return-void
.end method

.method public blacklist setInterval(Landroid/hardware/tv/tuner/FrontendGuardInterval;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendGuardInterval;

    .line 475
    const/16 v0, 0x1a

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 476
    return-void
.end method

.method public blacklist setInversion(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 236
    return-void
.end method

.method public blacklist setIsDemodLocked(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 85
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 86
    return-void
.end method

.method public blacklist setIsEWBS(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 280
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 281
    return-void
.end method

.method public blacklist setIsLayerError([Z)V
    .locals 1
    .param p1, "_value"    # [Z

    .line 325
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 326
    return-void
.end method

.method public blacklist setIsLinear(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 610
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x23

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 611
    return-void
.end method

.method public blacklist setIsLnaOn(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 310
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 311
    return-void
.end method

.method public blacklist setIsMiso(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 595
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x22

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 596
    return-void
.end method

.method public blacklist setIsRfLocked(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 385
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x14

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 386
    return-void
.end method

.method public blacklist setIsShortFrames(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 625
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 626
    return-void
.end method

.method public blacklist setIsdbtMode(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 640
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x25

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 641
    return-void
.end method

.method public blacklist setIsdbtSegment([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 550
    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 551
    return-void
.end method

.method public blacklist setLnbVoltage(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 250
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 251
    return-void
.end method

.method public blacklist setMer(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x11

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 341
    return-void
.end method

.method public blacklist setModulationStatus(Landroid/hardware/tv/tuner/FrontendModulationStatus;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendModulationStatus;

    .line 220
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 221
    return-void
.end method

.method public blacklist setModulations([Landroid/hardware/tv/tuner/FrontendModulation;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/tv/tuner/FrontendModulation;

    .line 415
    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 416
    return-void
.end method

.method public blacklist setPartialReceptionFlag(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 655
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 656
    return-void
.end method

.method public blacklist setPer(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 131
    return-void
.end method

.method public blacklist setPlpId(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 266
    return-void
.end method

.method public blacklist setPlpInfo([Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    .line 400
    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 401
    return-void
.end method

.method public blacklist setPreBer(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 146
    return-void
.end method

.method public blacklist setRollOff(Landroid/hardware/tv/tuner/FrontendRollOff;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendRollOff;

    .line 580
    const/16 v0, 0x21

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 581
    return-void
.end method

.method public blacklist setSignalQuality(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 161
    return-void
.end method

.method public blacklist setSignalStrength(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 176
    return-void
.end method

.method public blacklist setSnr(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method public blacklist setStreamIdList([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 670
    const/16 v0, 0x27

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 671
    return-void
.end method

.method public blacklist setSymbolRate(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 191
    return-void
.end method

.method public blacklist setSystemId(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 520
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 521
    return-void
.end method

.method public blacklist setTransmissionMode(Landroid/hardware/tv/tuner/FrontendTransmissionMode;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    .line 490
    const/16 v0, 0x1b

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 491
    return-void
.end method

.method public blacklist setTsDataRate([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 565
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 566
    return-void
.end method

.method public blacklist setUec(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 505
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/FrontendStatus;->_set(ILjava/lang/Object;)V

    .line 506
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 721
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendStatus;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 847
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getAllPlpInfo()[Landroid/hardware/tv/tuner/FrontendScanAtsc3PlpInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 844
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getDvbtCellIds()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 845
    goto/16 :goto_0

    .line 841
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getStreamIdList()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 842
    goto/16 :goto_0

    .line 838
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPartialReceptionFlag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    goto/16 :goto_0

    .line 835
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsdbtMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    goto/16 :goto_0

    .line 832
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsShortFrames()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 833
    goto/16 :goto_0

    .line 829
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsLinear()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 830
    goto/16 :goto_0

    .line 826
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsMiso()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 827
    goto/16 :goto_0

    .line 823
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getRollOff()Landroid/hardware/tv/tuner/FrontendRollOff;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 824
    goto/16 :goto_0

    .line 820
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTsDataRate()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 821
    goto/16 :goto_0

    .line 817
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsdbtSegment()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 818
    goto/16 :goto_0

    .line 814
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterleaving()[Landroid/hardware/tv/tuner/FrontendInterleaveMode;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 815
    goto/16 :goto_0

    .line 811
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSystemId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    goto/16 :goto_0

    .line 808
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getUec()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    goto/16 :goto_0

    .line 805
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getTransmissionMode()Landroid/hardware/tv/tuner/FrontendTransmissionMode;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 806
    goto/16 :goto_0

    .line 802
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInterval()Landroid/hardware/tv/tuner/FrontendGuardInterval;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 803
    goto/16 :goto_0

    .line 799
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBandwidth()Landroid/hardware/tv/tuner/FrontendBandwidth;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 800
    goto/16 :goto_0

    .line 796
    :pswitch_11
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getCodeRates()[J

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 797
    goto/16 :goto_0

    .line 793
    :pswitch_12
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBers()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 794
    goto/16 :goto_0

    .line 790
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulations()[Landroid/hardware/tv/tuner/FrontendModulation;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 791
    goto/16 :goto_0

    .line 787
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPlpInfo()[Landroid/hardware/tv/tuner/FrontendStatusAtsc3PlpInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 788
    goto/16 :goto_0

    .line 784
    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsRfLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 785
    goto/16 :goto_0

    .line 781
    :pswitch_16
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getHierarchy()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    goto/16 :goto_0

    .line 778
    :pswitch_17
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getFreqOffset()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 779
    goto/16 :goto_0

    .line 775
    :pswitch_18
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getMer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    goto/16 :goto_0

    .line 772
    :pswitch_19
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsLayerError()[Z

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 773
    goto/16 :goto_0

    .line 769
    :pswitch_1a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsLnaOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 770
    goto/16 :goto_0

    .line 766
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getAgc()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    goto/16 :goto_0

    .line 763
    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsEWBS()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 764
    goto/16 :goto_0

    .line 760
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPlpId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    goto :goto_0

    .line 757
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getLnbVoltage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    goto :goto_0

    .line 754
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInversion()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    goto :goto_0

    .line 751
    :pswitch_20
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getModulationStatus()Landroid/hardware/tv/tuner/FrontendModulationStatus;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 752
    goto :goto_0

    .line 748
    :pswitch_21
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getInnerFec()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 749
    goto :goto_0

    .line 745
    :pswitch_22
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSymbolRate()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    goto :goto_0

    .line 742
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSignalStrength()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    goto :goto_0

    .line 739
    :pswitch_24
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSignalQuality()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    goto :goto_0

    .line 736
    :pswitch_25
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPreBer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    goto :goto_0

    .line 733
    :pswitch_26
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getPer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    goto :goto_0

    .line 730
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getBer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    goto :goto_0

    .line 727
    :pswitch_28
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getSnr()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    goto :goto_0

    .line 724
    :pswitch_29
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/FrontendStatus;->getIsDemodLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 725
    nop

    .line 850
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
