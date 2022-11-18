.class public final Landroid/hardware/radio/RadioMetadata;
.super Ljava/lang/Object;
.source "RadioMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioMetadata$Builder;,
        Landroid/hardware/radio/RadioMetadata$Clock;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o METADATA_KEYS_TYPE:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist METADATA_KEY_ALBUM:Ljava/lang/String; = "android.hardware.radio.metadata.ALBUM"

.field public static final whitelist METADATA_KEY_ART:Ljava/lang/String; = "android.hardware.radio.metadata.ART"

.field public static final whitelist METADATA_KEY_ARTIST:Ljava/lang/String; = "android.hardware.radio.metadata.ARTIST"

.field public static final whitelist METADATA_KEY_CLOCK:Ljava/lang/String; = "android.hardware.radio.metadata.CLOCK"

.field public static final whitelist METADATA_KEY_DAB_COMPONENT_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

.field public static final whitelist METADATA_KEY_DAB_COMPONENT_NAME_SHORT:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

.field public static final whitelist METADATA_KEY_DAB_ENSEMBLE_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

.field public static final whitelist METADATA_KEY_DAB_ENSEMBLE_NAME_SHORT:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

.field public static final whitelist METADATA_KEY_DAB_SERVICE_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_SERVICE_NAME"

.field public static final whitelist METADATA_KEY_DAB_SERVICE_NAME_SHORT:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

.field public static final whitelist METADATA_KEY_GENRE:Ljava/lang/String; = "android.hardware.radio.metadata.GENRE"

.field public static final whitelist METADATA_KEY_ICON:Ljava/lang/String; = "android.hardware.radio.metadata.ICON"

.field public static final whitelist METADATA_KEY_PROGRAM_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.PROGRAM_NAME"

.field public static final whitelist METADATA_KEY_RBDS_PTY:Ljava/lang/String; = "android.hardware.radio.metadata.RBDS_PTY"

.field public static final whitelist METADATA_KEY_RDS_PI:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PI"

.field public static final whitelist METADATA_KEY_RDS_PS:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PS"

.field public static final whitelist METADATA_KEY_RDS_PTY:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PTY"

.field public static final whitelist METADATA_KEY_RDS_RT:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_RT"

.field public static final whitelist METADATA_KEY_TITLE:Ljava/lang/String; = "android.hardware.radio.metadata.TITLE"

.field private static final greylist-max-o METADATA_TYPE_BITMAP:I = 0x2

.field private static final greylist-max-o METADATA_TYPE_CLOCK:I = 0x3

.field private static final greylist-max-o METADATA_TYPE_INT:I = 0x0

.field private static final greylist-max-o METADATA_TYPE_INVALID:I = -0x1

.field private static final greylist-max-o METADATA_TYPE_TEXT:I = 0x1

.field private static final greylist-max-o NATIVE_KEY_ALBUM:I = 0x7

.field private static final greylist-max-o NATIVE_KEY_ART:I = 0xa

.field private static final greylist-max-o NATIVE_KEY_ARTIST:I = 0x6

.field private static final greylist-max-o NATIVE_KEY_CLOCK:I = 0xb

.field private static final greylist-max-o NATIVE_KEY_GENRE:I = 0x8

.field private static final greylist-max-o NATIVE_KEY_ICON:I = 0x9

.field private static final greylist-max-o NATIVE_KEY_INVALID:I = -0x1

.field private static final greylist-max-o NATIVE_KEY_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o NATIVE_KEY_RBDS_PTY:I = 0x3

.field private static final greylist-max-o NATIVE_KEY_RDS_PI:I = 0x0

.field private static final greylist-max-o NATIVE_KEY_RDS_PS:I = 0x1

.field private static final greylist-max-o NATIVE_KEY_RDS_PTY:I = 0x2

.field private static final greylist-max-o NATIVE_KEY_RDS_RT:I = 0x4

.field private static final greylist-max-o NATIVE_KEY_TITLE:I = 0x5

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BroadcastRadio.metadata"


# instance fields
.field private final greylist-max-o mBundle:Landroid/os/Bundle;

.field private blacklist mHashCode:Ljava/lang/Integer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBundle(Landroid/hardware/radio/RadioMetadata;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smputInt(Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/hardware/radio/RadioMetadata;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 16

    .line 155
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    .line 156
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.hardware.radio.metadata.RDS_PI"

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "android.hardware.radio.metadata.RDS_PS"

    invoke-virtual {v0, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v7, "android.hardware.radio.metadata.RDS_PTY"

    invoke-virtual {v0, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v8, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-virtual {v0, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v2, "android.hardware.radio.metadata.RDS_RT"

    invoke-virtual {v0, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v9, "android.hardware.radio.metadata.TITLE"

    invoke-virtual {v0, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v10, "android.hardware.radio.metadata.ARTIST"

    invoke-virtual {v0, v10, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v11, "android.hardware.radio.metadata.ALBUM"

    invoke-virtual {v0, v11, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v12, "android.hardware.radio.metadata.GENRE"

    invoke-virtual {v0, v12, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "android.hardware.radio.metadata.ICON"

    invoke-virtual {v0, v15, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v13, "android.hardware.radio.metadata.ART"

    invoke-virtual {v0, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v14, "android.hardware.radio.metadata.CLOCK"

    invoke-virtual {v0, v14, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v4, "android.hardware.radio.metadata.PROGRAM_NAME"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v4, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v4, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v4, "android.hardware.radio.metadata.DAB_SERVICE_NAME"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v4, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v4, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v4, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    .line 196
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    new-instance v0, Landroid/hardware/radio/RadioMetadata$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .locals 1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    .line 302
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    .line 306
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Bundle;Landroid/hardware/radio/RadioMetadata-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    .line 310
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioMetadata-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o getKeyFromNativeKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "nativeKey"    # I

    .line 467
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static greylist-max-o putInt(Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 358
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 359
    .local v0, "type":I
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key cannot be used to put an int"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    return-void
.end method


# virtual methods
.method public whitelist containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 284
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 285
    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/RadioMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 286
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioMetadata;

    iget-object v1, v1, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    .line 287
    .local v1, "otherBundle":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 288
    return v2

    .line 290
    :cond_2
    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 293
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 294
    return v2

    .line 296
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 297
    :cond_4
    return v0
.end method

.method public whitelist getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    const/4 v0, 0x0

    .line 387
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 391
    goto :goto_0

    .line 388
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BroadcastRadio.metadata"

    const-string v3, "Failed to retrieve a key as Bitmap."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public greylist-max-o getBitmapId(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 415
    const-string v0, "android.hardware.radio.metadata.ICON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.hardware.radio.metadata.ART"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 416
    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioMetadata;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getClock(Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Clock;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 420
    const/4 v0, 0x0

    .line 422
    .local v0, "clock":Landroid/hardware/radio/RadioMetadata$Clock;
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioMetadata$Clock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 426
    goto :goto_0

    .line 423
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BroadcastRadio.metadata"

    const-string v3, "Failed to retrieve a key as Clock."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 373
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    .line 269
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 272
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 273
    .local v1, "objs":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 274
    mul-int/lit8 v3, v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 275
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    .end local v2    # "i":I
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;

    .line 279
    .end local v0    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "objs":[Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o putBitmapFromNative(I[B)I
    .locals 5
    .param p1, "nativeKey"    # I
    .param p2, "value"    # [B

    .line 668
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 670
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 673
    :cond_0
    const/4 v1, 0x0

    .line 675
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    array-length v2, p2

    const/4 v4, 0x0

    invoke-static {p2, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    .line 676
    if-eqz v1, :cond_1

    .line 677
    iget-object v2, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 679
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    return v4

    .line 683
    :cond_1
    goto :goto_0

    .line 682
    :catch_0
    move-exception v2

    .line 684
    :goto_0
    return v3

    .line 671
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return v3
.end method

.method greylist-max-o putClockFromNative(IJI)I
    .locals 3
    .param p1, "nativeKey"    # I
    .param p2, "utcEpochSeconds"    # J
    .param p4, "timezoneOffsetInMinutes"    # I

    .line 688
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 690
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    new-instance v2, Landroid/hardware/radio/RadioMetadata$Clock;

    invoke-direct {v2, p2, p3, p4}, Landroid/hardware/radio/RadioMetadata$Clock;-><init>(JI)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 696
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;

    .line 697
    const/4 v1, 0x0

    return v1

    .line 691
    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method greylist-max-o putIntFromNative(II)I
    .locals 3
    .param p1, "nativeKey"    # I
    .param p2, "value"    # I

    .line 644
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "key":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-static {v1, v0, p2}, Landroid/hardware/radio/RadioMetadata;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 648
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    const/4 v1, 0x0

    return v1

    .line 650
    :catch_0
    move-exception v1

    .line 651
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v2, -0x1

    return v2
.end method

.method greylist-max-o putStringFromNative(ILjava/lang/String;)I
    .locals 3
    .param p1, "nativeKey"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 656
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mHashCode:Ljava/lang/Integer;

    .line 664
    const/4 v1, 0x0

    return v1

    .line 659
    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist size()I
    .locals 1

    .line 446
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RadioMetadata["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "android.hardware.radio.metadata"

    .line 319
    .local v1, "removePrefix":Ljava/lang/String;
    const/4 v2, 0x1

    .line 320
    .local v2, "first":Z
    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 321
    .local v4, "key":Ljava/lang/String;
    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 322
    :cond_0
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :goto_1
    move-object v5, v4

    .line 325
    .local v5, "keyDisp":Ljava/lang/String;
    const-string v6, "android.hardware.radio.metadata"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 327
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    iget-object v6, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 330
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyDisp":Ljava/lang/String;
    goto :goto_0

    .line 332
    :cond_2
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 437
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 438
    return-void
.end method
