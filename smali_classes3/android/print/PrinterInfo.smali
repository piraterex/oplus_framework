.class public final Landroid/print/PrinterInfo;
.super Ljava/lang/Object;
.source "PrinterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterInfo$Builder;,
        Landroid/print/PrinterInfo$Status;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATUS_BUSY:I = 0x2

.field public static final whitelist STATUS_IDLE:I = 0x1

.field public static final whitelist STATUS_UNAVAILABLE:I = 0x3


# instance fields
.field private final greylist-max-o mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

.field private final greylist-max-o mCustomPrinterIconGen:I

.field private final greylist-max-o mDescription:Ljava/lang/String;

.field private final greylist-max-o mHasCustomPrinterIcon:Z

.field private final greylist-max-o mIconResourceId:I

.field private final greylist-max-o mId:Landroid/print/PrinterId;

.field private final greylist-max-o mInfoIntent:Landroid/app/PendingIntent;

.field private final greylist-max-o mName:Ljava/lang/String;

.field private final greylist-max-o mStatus:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCapabilities(Landroid/print/PrinterInfo;)Landroid/print/PrinterCapabilitiesInfo;
    .locals 0

    iget-object p0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomPrinterIconGen(Landroid/print/PrinterInfo;)I
    .locals 0

    iget p0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDescription(Landroid/print/PrinterInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasCustomPrinterIcon(Landroid/print/PrinterInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconResourceId(Landroid/print/PrinterInfo;)I
    .locals 0

    iget p0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/print/PrinterInfo;)Landroid/print/PrinterId;
    .locals 0

    iget-object p0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInfoIntent(Landroid/print/PrinterInfo;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/print/PrinterInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatus(Landroid/print/PrinterInfo;)I
    .locals 0

    iget p0, p0, Landroid/print/PrinterInfo;->mStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/print/PrinterInfo;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;
    .locals 0

    invoke-static {p0}, Landroid/print/PrinterInfo;->checkPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckStatus(I)I
    .locals 0

    invoke-static {p0}, Landroid/print/PrinterInfo;->checkStatus(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 566
    new-instance v0, Landroid/print/PrinterInfo$1;

    invoke-direct {v0}, Landroid/print/PrinterInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const-class v0, Landroid/print/PrinterId;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    invoke-static {v0}, Landroid/print/PrinterInfo;->checkPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/print/PrinterInfo;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/print/PrinterInfo;->checkStatus(I)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    .line 277
    const-class v0, Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterCapabilitiesInfo;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    .line 281
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    .line 282
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/print/PrinterInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/print/PrinterInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;I)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "iconResourceId"    # I
    .param p5, "hasCustomPrinterIcon"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "infoIntent"    # Landroid/app/PendingIntent;
    .param p8, "capabilities"    # Landroid/print/PrinterCapabilitiesInfo;
    .param p9, "customPrinterIconGen"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    .line 101
    iput-object p2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    .line 102
    iput p3, p0, Landroid/print/PrinterInfo;->mStatus:I

    .line 103
    iput p4, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    .line 104
    iput-boolean p5, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    .line 105
    iput-object p6, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    .line 106
    iput-object p7, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    .line 107
    iput-object p8, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    .line 108
    iput p9, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    .line 109
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;ILandroid/print/PrinterInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;I)V

    return-void
.end method

.method private static greylist-max-o checkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 267
    const-string/jumbo v0, "name cannot be empty."

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static greylist-max-o checkPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;
    .locals 1
    .param p0, "printerId"    # Landroid/print/PrinterId;

    .line 239
    const-string/jumbo v0, "printerId cannot be null."

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    return-object v0
.end method

.method private static greylist-max-o checkStatus(I)I
    .locals 2
    .param p0, "status"    # I

    .line 250
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "status is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 364
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 365
    return v0

    .line 367
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 368
    return v1

    .line 370
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 371
    return v1

    .line 373
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/print/PrinterInfo;

    .line 374
    .local v2, "other":Landroid/print/PrinterInfo;
    invoke-virtual {p0, v2}, Landroid/print/PrinterInfo;->equalsIgnoringStatus(Landroid/print/PrinterInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 375
    return v1

    .line 377
    :cond_3
    iget v3, p0, Landroid/print/PrinterInfo;->mStatus:I

    iget v4, v2, Landroid/print/PrinterInfo;->mStatus:I

    if-eq v3, v4, :cond_4

    .line 378
    return v1

    .line 380
    :cond_4
    return v0
.end method

.method public greylist-max-o equalsIgnoringStatus(Landroid/print/PrinterInfo;)Z
    .locals 3
    .param p1, "other"    # Landroid/print/PrinterInfo;

    .line 327
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    iget-object v1, p1, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v0, v1}, Landroid/print/PrinterId;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 328
    return v1

    .line 330
    :cond_0
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    iget-object v2, p1, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    return v1

    .line 333
    :cond_1
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    iget-object v2, p1, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    return v1

    .line 336
    :cond_2
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-nez v0, :cond_3

    .line 337
    iget-object v0, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v0, :cond_4

    .line 338
    return v1

    .line 340
    :cond_3
    iget-object v2, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v0, v2}, Landroid/print/PrinterCapabilitiesInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 341
    return v1

    .line 343
    :cond_4
    iget v0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    iget v2, p1, Landroid/print/PrinterInfo;->mIconResourceId:I

    if-eq v0, v2, :cond_5

    .line 344
    return v1

    .line 346
    :cond_5
    iget-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    iget-boolean v2, p1, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    if-eq v0, v2, :cond_6

    .line 347
    return v1

    .line 349
    :cond_6
    iget v0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    iget v2, p1, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    if-eq v0, v2, :cond_7

    .line 350
    return v1

    .line 352
    :cond_7
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_8

    .line 353
    iget-object v0, p1, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    .line 354
    return v1

    .line 356
    :cond_8
    iget-object v2, p1, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 357
    return v1

    .line 359
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getCapabilities()Landroid/print/PrinterCapabilitiesInfo;
    .locals 1

    .line 228
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getHasCustomPrinterIcon()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    return v0
.end method

.method public whitelist getId()Landroid/print/PrinterId;
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    return-object v0
.end method

.method public greylist-max-o getInfoIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 219
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStatus()I
    .locals 1

    .line 198
    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    .line 304
    const/16 v0, 0x1f

    .line 305
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 306
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v3}, Landroid/print/PrinterId;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 307
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 308
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrinterInfo;->mStatus:I

    add-int/2addr v2, v3

    .line 309
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-int/2addr v1, v3

    .line 310
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/print/PrinterCapabilitiesInfo;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    add-int/2addr v2, v3

    .line 311
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    add-int/2addr v1, v3

    .line 312
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    add-int/2addr v2, v3

    .line 313
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    add-int/2addr v1, v3

    .line 314
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/PendingIntent;->hashCode()I

    move-result v4

    :cond_2
    add-int/2addr v2, v4

    .line 315
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public blacklist loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 135
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-boolean v2, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    if-eqz v2, :cond_0

    .line 136
    nop

    .line 137
    const-string/jumbo v2, "print"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintManager;

    .line 139
    .local v2, "printManager":Landroid/print/PrintManager;
    iget-object v3, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v2, v3}, Landroid/print/PrintManager;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 141
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_0

    .line 142
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 146
    .end local v2    # "printManager":Landroid/print/PrintManager;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    :cond_0
    if-nez v0, :cond_3

    .line 148
    :try_start_0
    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 150
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 153
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    if-eqz v5, :cond_1

    .line 154
    invoke-virtual {v1, v2, v5, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    .line 158
    :cond_1
    if-nez v0, :cond_2

    .line 159
    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 162
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    goto :goto_0

    .line 161
    :catch_0
    move-exception v2

    .line 165
    :cond_3
    :goto_0
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrinterInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrinterInfo;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v1, ", capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    const-string v1, ", iconResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    const-string v1, ", hasCustomPrinterIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, ", customPrinterIconGen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    const-string v1, ", infoIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 291
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 292
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 296
    iget v0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 298
    iget v0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 300
    return-void
.end method
