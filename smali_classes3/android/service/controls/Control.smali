.class public final Landroid/service/controls/Control;
.super Ljava/lang/Object;
.source "Control.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/Control$StatefulBuilder;,
        Landroid/service/controls/Control$StatelessBuilder;,
        Landroid/service/controls/Control$Status;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NUM_STATUS:I = 0x5

.field public static final whitelist STATUS_DISABLED:I = 0x4

.field public static final whitelist STATUS_ERROR:I = 0x3

.field public static final whitelist STATUS_NOT_FOUND:I = 0x2

.field public static final whitelist STATUS_OK:I = 0x1

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "Control"


# instance fields
.field private final blacklist mAppIntent:Landroid/app/PendingIntent;

.field private final blacklist mAuthRequired:Z

.field private final blacklist mControlId:Ljava/lang/String;

.field private final blacklist mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

.field private final blacklist mCustomColor:Landroid/content/res/ColorStateList;

.field private final blacklist mCustomIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mDeviceType:I

.field private final blacklist mStatus:I

.field private final blacklist mStatusText:Ljava/lang/CharSequence;

.field private final blacklist mStructure:Ljava/lang/CharSequence;

.field private final blacklist mSubtitle:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;

.field private final blacklist mZone:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppIntent(Landroid/service/controls/Control;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuthRequired(Landroid/service/controls/Control;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControlId(Landroid/service/controls/Control;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControlTemplate(Landroid/service/controls/Control;)Landroid/service/controls/templates/ControlTemplate;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomColor(Landroid/service/controls/Control;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomIcon(Landroid/service/controls/Control;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceType(Landroid/service/controls/Control;)I
    .locals 0

    iget p0, p0, Landroid/service/controls/Control;->mDeviceType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatus(Landroid/service/controls/Control;)I
    .locals 0

    iget p0, p0, Landroid/service/controls/Control;->mStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusText(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStructure(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZone(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 395
    new-instance v0, Landroid/service/controls/Control$1;

    invoke-direct {v0}, Landroid/service/controls/Control$1;-><init>()V

    sput-object v0, Landroid/service/controls/Control;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    goto :goto_0

    .line 202
    :cond_0
    iput-object v1, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    .line 204
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    goto :goto_1

    .line 207
    :cond_1
    iput-object v1, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    .line 209
    :goto_1
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    .line 212
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    goto :goto_2

    .line 214
    :cond_2
    iput-object v1, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 217
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    .line 218
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    goto :goto_3

    .line 220
    :cond_3
    iput-object v1, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 223
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control;->mStatus:I

    .line 224
    sget-object v0, Landroid/service/controls/templates/ControlTemplateWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/controls/templates/ControlTemplateWrapper;

    .line 225
    .local v0, "wrapper":Landroid/service/controls/templates/ControlTemplateWrapper;
    invoke-virtual {v0}, Landroid/service/controls/templates/ControlTemplateWrapper;->getWrappedTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v1

    iput-object v1, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    .line 228
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/content/res/ColorStateList;ILandroid/service/controls/templates/ControlTemplate;Ljava/lang/CharSequence;Z)V
    .locals 14
    .param p1, "controlId"    # Ljava/lang/String;
    .param p2, "deviceType"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "subtitle"    # Ljava/lang/CharSequence;
    .param p5, "structure"    # Ljava/lang/CharSequence;
    .param p6, "zone"    # Ljava/lang/CharSequence;
    .param p7, "appIntent"    # Landroid/app/PendingIntent;
    .param p8, "customIcon"    # Landroid/graphics/drawable/Icon;
    .param p9, "customColor"    # Landroid/content/res/ColorStateList;
    .param p10, "status"    # I
    .param p11, "controlTemplate"    # Landroid/service/controls/templates/ControlTemplate;
    .param p12, "statusText"    # Ljava/lang/CharSequence;
    .param p13, "authRequired"    # Z

    .line 156
    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static/range {p7 .. p7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static/range {p11 .. p11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static/range {p12 .. p12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    move-object v3, p1

    iput-object v3, v0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    .line 164
    invoke-static/range {p2 .. p2}, Landroid/service/controls/DeviceTypes;->validDeviceType(I)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "Control"

    if-nez v4, :cond_0

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid device type:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput v5, v0, Landroid/service/controls/Control;->mDeviceType:I

    goto :goto_0

    .line 168
    :cond_0
    iput v1, v0, Landroid/service/controls/Control;->mDeviceType:I

    .line 170
    :goto_0
    move-object/from16 v4, p3

    iput-object v4, v0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    .line 171
    move-object/from16 v7, p4

    iput-object v7, v0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    .line 172
    move-object/from16 v8, p5

    iput-object v8, v0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    .line 173
    move-object/from16 v9, p6

    iput-object v9, v0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    .line 174
    move-object/from16 v10, p7

    iput-object v10, v0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    .line 176
    move-object/from16 v11, p9

    iput-object v11, v0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 177
    move-object/from16 v12, p8

    iput-object v12, v0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 179
    if-ltz v2, :cond_2

    const/4 v13, 0x5

    if-lt v2, v13, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    iput v2, v0, Landroid/service/controls/Control;->mStatus:I

    goto :goto_2

    .line 180
    :cond_2
    :goto_1
    iput v5, v0, Landroid/service/controls/Control;->mStatus:I

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Status unknown:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_2
    move-object/from16 v5, p11

    iput-object v5, v0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 186
    move-object/from16 v6, p12

    iput-object v6, v0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    .line 187
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/service/controls/Control;->mAuthRequired:Z

    .line 188
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 292
    iget-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getControlId()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getControlTemplate()Landroid/service/controls/templates/ControlTemplate;
    .locals 1

    .line 333
    iget-object v0, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method

.method public whitelist getCustomColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 315
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getCustomIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 303
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getDeviceType()I
    .locals 1

    .line 245
    iget v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    return v0
.end method

.method public whitelist getStatus()I
    .locals 1

    .line 324
    iget v0, p0, Landroid/service/controls/Control;->mStatus:I

    return v0
.end method

.method public whitelist getStatusText()Ljava/lang/CharSequence;
    .locals 1

    .line 342
    iget-object v0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getStructure()Ljava/lang/CharSequence;
    .locals 1

    .line 273
    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 261
    iget-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getZone()Ljava/lang/CharSequence;
    .locals 1

    .line 284
    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist isAuthRequired()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 359
    iget-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 365
    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 369
    :goto_0
    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 371
    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 373
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 375
    :goto_1
    iget-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 376
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2

    .line 377
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 378
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 380
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 382
    :goto_2
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    .line 383
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 384
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 386
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 389
    :goto_3
    iget v0, p0, Landroid/service/controls/Control;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    new-instance v0, Landroid/service/controls/templates/ControlTemplateWrapper;

    iget-object v1, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    invoke-direct {v0, v1}, Landroid/service/controls/templates/ControlTemplateWrapper;-><init>(Landroid/service/controls/templates/ControlTemplate;)V

    invoke-virtual {v0, p1, p2}, Landroid/service/controls/templates/ControlTemplateWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 391
    iget-object v0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 392
    iget-boolean v0, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 393
    return-void
.end method
