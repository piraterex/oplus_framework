.class public final Landroid/hardware/display/BrightnessChangeEvent;
.super Ljava/lang/Object;
.source "BrightnessChangeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessChangeEvent$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final whitelist batteryLevel:F

.field public final whitelist brightness:F

.field public final whitelist colorSampleDuration:J

.field public final whitelist colorTemperature:I

.field public final whitelist colorValueBuckets:[J

.field public final whitelist isDefaultBrightnessConfig:Z

.field public final whitelist isUserSetBrightness:Z

.field public final whitelist lastBrightness:F

.field public final whitelist luxTimestamps:[J

.field public final whitelist luxValues:[F

.field public final whitelist nightMode:Z

.field public final whitelist packageName:Ljava/lang/String;

.field public final whitelist powerBrightnessFactor:F

.field public final whitelist reduceBrightColors:Z

.field public final whitelist reduceBrightColorsOffset:F

.field public final whitelist reduceBrightColorsStrength:I

.field public final whitelist timeStamp:J

.field public final whitelist uniqueDisplayId:Ljava/lang/String;

.field public final greylist-max-o userId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Landroid/hardware/display/BrightnessChangeEvent$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessChangeEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(FJLjava/lang/String;ILjava/lang/String;[F[JFFZIZIFFZZ[JJ)V
    .locals 16
    .param p1, "brightness"    # F
    .param p2, "timeStamp"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "uniqueDisplayId"    # Ljava/lang/String;
    .param p7, "luxValues"    # [F
    .param p8, "luxTimestamps"    # [J
    .param p9, "batteryLevel"    # F
    .param p10, "powerBrightnessFactor"    # F
    .param p11, "nightMode"    # Z
    .param p12, "colorTemperature"    # I
    .param p13, "reduceBrightColors"    # Z
    .param p14, "reduceBrightColorsStrength"    # I
    .param p15, "reduceBrightColorsOffset"    # F
    .param p16, "lastBrightness"    # F
    .param p17, "isDefaultBrightnessConfig"    # Z
    .param p18, "isUserSetBrightness"    # Z
    .param p19, "colorValueBuckets"    # [J
    .param p20, "colorSampleDuration"    # J

    .line 131
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    move/from16 v1, p1

    iput v1, v0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 133
    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 134
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    .line 135
    move/from16 v5, p5

    iput v5, v0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 136
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    .line 137
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 138
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    .line 139
    move/from16 v9, p9

    iput v9, v0, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    .line 140
    move/from16 v10, p10

    iput v10, v0, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 141
    move/from16 v11, p11

    iput-boolean v11, v0, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    .line 142
    move/from16 v12, p12

    iput v12, v0, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    .line 143
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    .line 144
    move/from16 v14, p14

    iput v14, v0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    .line 145
    move/from16 v15, p15

    iput v15, v0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    .line 146
    move/from16 v1, p16

    iput v1, v0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 147
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 148
    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    .line 149
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    .line 150
    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    .line 151
    return-void
.end method

.method synthetic constructor blacklist <init>(FJLjava/lang/String;ILjava/lang/String;[F[JFFZIZIFFZZ[JJLandroid/hardware/display/BrightnessChangeEvent-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p21}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(FJLjava/lang/String;ILjava/lang/String;[F[JFFZIZIFFZZ[JJ)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/BrightnessChangeEvent;
    .param p2, "redactPackage"    # Z

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 156
    iget-wide v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    iput-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 157
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    .line 158
    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 159
    iget-object v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    .line 160
    iget-object v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 161
    iget-object v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    .line 162
    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    .line 163
    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 164
    iget-boolean v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    .line 165
    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    .line 166
    iget-boolean v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    .line 167
    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    .line 168
    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    .line 169
    iget v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 170
    iget-boolean v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 171
    iget-boolean v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    .line 172
    iget-object v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    .line 173
    iget-wide v0, p1, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    iput-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    .line 174
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    .line 196
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/BrightnessChangeEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 215
    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 216
    iget-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    iget-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->uniqueDisplayId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 221
    iget-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 222
    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 223
    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 224
    iget-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 225
    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColors:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 227
    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->reduceBrightColorsOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 229
    iget v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 230
    iget-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 231
    iget-boolean v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 232
    iget-object v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 233
    iget-wide v0, p0, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 234
    return-void
.end method
