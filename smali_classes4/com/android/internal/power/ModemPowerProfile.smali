.class public Lcom/android/internal/power/ModemPowerProfile;
.super Ljava/lang/Object;
.source "ModemPowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/power/ModemPowerProfile$ModemNrFrequencyRange;,
        Lcom/android/internal/power/ModemPowerProfile$ModemRatType;,
        Lcom/android/internal/power/ModemPowerProfile$ModemTxLevel;,
        Lcom/android/internal/power/ModemPowerProfile$ModemDrainType;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_LEVEL:Ljava/lang/String; = "level"

.field private static final blacklist ATTR_NR_FREQUENCY:Ljava/lang/String; = "nrFrequency"

.field private static final blacklist ATTR_RAT:Ljava/lang/String; = "rat"

.field public static final blacklist MODEM_DRAIN_TYPE_IDLE:I = 0x10000000

.field private static final blacklist MODEM_DRAIN_TYPE_MASK:I = -0x10000000

.field private static final blacklist MODEM_DRAIN_TYPE_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MODEM_DRAIN_TYPE_RX:I = 0x20000000

.field public static final blacklist MODEM_DRAIN_TYPE_SLEEP:I = 0x0

.field public static final blacklist MODEM_DRAIN_TYPE_TX:I = 0x30000000

.field public static final blacklist MODEM_NR_FREQUENCY_RANGE_DEFAULT:I = 0x0

.field public static final blacklist MODEM_NR_FREQUENCY_RANGE_HIGH:I = 0x30000

.field public static final blacklist MODEM_NR_FREQUENCY_RANGE_LOW:I = 0x10000

.field private static final blacklist MODEM_NR_FREQUENCY_RANGE_MASK:I = 0xf0000

.field public static final blacklist MODEM_NR_FREQUENCY_RANGE_MID:I = 0x20000

.field public static final blacklist MODEM_NR_FREQUENCY_RANGE_MMWAVE:I = 0x40000

.field private static final blacklist MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MODEM_RAT_TYPE_DEFAULT:I = 0x0

.field public static final blacklist MODEM_RAT_TYPE_LTE:I = 0x100000

.field private static final blacklist MODEM_RAT_TYPE_MASK:I = 0xf00000

.field private static final blacklist MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MODEM_RAT_TYPE_NR:I = 0x200000

.field public static final blacklist MODEM_TX_LEVEL_0:I = 0x0

.field public static final blacklist MODEM_TX_LEVEL_1:I = 0x1000000

.field public static final blacklist MODEM_TX_LEVEL_2:I = 0x2000000

.field public static final blacklist MODEM_TX_LEVEL_3:I = 0x3000000

.field public static final blacklist MODEM_TX_LEVEL_4:I = 0x4000000

.field private static final blacklist MODEM_TX_LEVEL_COUNT:I = 0x5

.field private static final blacklist MODEM_TX_LEVEL_MAP:[I

.field private static final blacklist MODEM_TX_LEVEL_MASK:I = 0xf000000

.field private static final blacklist MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ModemPowerProfile"

.field private static final blacklist TAG_ACTIVE:Ljava/lang/String; = "active"

.field private static final blacklist TAG_IDLE:Ljava/lang/String; = "idle"

.field private static final blacklist TAG_RECEIVE:Ljava/lang/String; = "receive"

.field private static final blacklist TAG_SLEEP:Ljava/lang/String; = "sleep"

.field private static final blacklist TAG_TRANSMIT:Ljava/lang/String; = "transmit"


# instance fields
.field private final blacklist mPowerConstants:Landroid/util/SparseDoubleArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_DRAIN_TYPE_NAMES:Landroid/util/SparseArray;

    .line 110
    const/4 v1, 0x0

    const-string v2, "SLEEP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    const/high16 v2, 0x10000000

    const-string v3, "IDLE"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    const/high16 v2, 0x20000000

    const-string v3, "RX"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    const/high16 v2, 0x30000000

    const-string v3, "TX"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v2, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;

    .line 161
    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    const/high16 v2, 0x1000000

    const-string v4, "1"

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    const/high16 v2, 0x2000000

    const-string v4, "2"

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    const/high16 v2, 0x3000000

    const-string v4, "3"

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    const/high16 v2, 0x4000000

    const-string v4, "4"

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_MAP:[I

    .line 200
    new-instance v0, Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;

    .line 202
    const-string v2, "DEFAULT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    const/high16 v4, 0x100000

    const-string v5, "LTE"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    const/high16 v4, 0x200000

    const-string v5, "NR"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    const/high16 v1, 0x10000

    const-string v2, "LOW"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    const/high16 v1, 0x20000

    const-string v2, "MID"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    const/high16 v1, 0x30000

    const-string v2, "HIGH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    const/high16 v1, 0x40000

    const-string v2, "MMWAVE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1000000
        0x2000000
        0x3000000
        0x4000000
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseDoubleArray;

    invoke-direct {v0}, Landroid/util/SparseDoubleArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    .line 253
    return-void
.end method

.method private static blacklist appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p3, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 444
    .local p2, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 447
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 448
    const-string v1, "UNKNOWN(0x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :goto_0
    return-void
.end method

.method private static blacklist getTypeFromAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/util/SparseArray;)I
    .locals 7
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "attr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 343
    .local p2, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 346
    const/4 v1, 0x0

    return v1

    .line 348
    :cond_0
    const/4 v1, -0x1

    .line 349
    .local v1, "index":I
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 351
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 352
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    move v1, v3

    .line 351
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 356
    .end local v3    # "i":I
    :cond_2
    if-gez v1, :cond_4

    .line 357
    new-array v3, v2, [Ljava/lang/String;

    .line 358
    .local v3, "stringNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 359
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 358
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 361
    .end local v4    # "i":I
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Acceptable values are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 363
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 365
    .end local v3    # "stringNames":[Ljava/lang/String;
    :cond_4
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    return v3
.end method

.method private static blacklist keyToString(I)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # I

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/high16 v1, -0x10000000

    and-int/2addr v1, p0

    .line 424
    .local v1, "drainType":I
    sget-object v2, Lcom/android/internal/power/ModemPowerProfile;->MODEM_DRAIN_TYPE_NAMES:Landroid/util/SparseArray;

    const-string v3, "drain"

    invoke-static {v0, v3, v2, v1}, Lcom/android/internal/power/ModemPowerProfile;->appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V

    .line 425
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const/high16 v3, 0x30000000

    if-ne v1, v3, :cond_0

    .line 428
    const/high16 v3, 0xf000000

    and-int/2addr v3, p0

    .line 429
    .local v3, "txLevel":I
    sget-object v4, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v5, "level"

    invoke-static {v0, v5, v4, v3}, Lcom/android/internal/power/ModemPowerProfile;->appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V

    .line 432
    .end local v3    # "txLevel":I
    :cond_0
    const/high16 v3, 0xf00000

    and-int/2addr v3, p0

    .line 433
    .local v3, "ratType":I
    sget-object v4, Lcom/android/internal/power/ModemPowerProfile;->MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;

    const-string v5, "RAT"

    invoke-static {v0, v5, v4, v3}, Lcom/android/internal/power/ModemPowerProfile;->appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V

    .line 435
    const/high16 v4, 0x200000

    if-ne v3, v4, :cond_1

    .line 436
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const/high16 v2, 0xf0000

    and-int/2addr v2, p0

    .line 438
    .local v2, "nrFreq":I
    sget-object v4, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v5, "nrFreq"

    invoke-static {v0, v5, v4, v2}, Lcom/android/internal/power/ModemPowerProfile;->appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V

    .line 440
    .end local v2    # "nrFreq":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist parseActivePowerConstantsFromXml(Landroid/content/res/XmlResourceParser;)V
    .locals 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 294
    const-string v0, "ModemPowerProfile"

    :try_start_0
    const-string/jumbo v1, "rat"

    sget-object v2, Lcom/android/internal/power/ModemPowerProfile;->MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;

    invoke-static {p1, v1, v2}, Lcom/android/internal/power/ModemPowerProfile;->getTypeFromAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/util/SparseArray;)I

    move-result v1

    .line 295
    .local v1, "ratType":I
    const/high16 v2, 0x200000

    if-ne v1, v2, :cond_0

    .line 296
    const-string/jumbo v2, "nrFrequency"

    sget-object v3, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    invoke-static {p1, v2, v3}, Lcom/android/internal/power/ModemPowerProfile;->getTypeFromAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/util/SparseArray;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "nrfType":I
    goto :goto_0

    .line 299
    .end local v2    # "nrfType":I
    :cond_0
    const/4 v2, 0x0

    .line 304
    .restart local v2    # "nrfType":I
    :goto_0
    nop

    .line 307
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 308
    .local v3, "depth":I
    :goto_1
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 309
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    :cond_1
    goto :goto_2

    :sswitch_0
    const-string/jumbo v5, "transmit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_3

    :sswitch_1
    const-string/jumbo v5, "receive"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_3

    :goto_2
    move v5, v6

    :goto_3
    const/4 v7, 0x4

    packed-switch v5, :pswitch_data_0

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected element parsed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 320
    :pswitch_0
    const-string/jumbo v5, "level"

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 321
    .local v5, "level":I
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-eq v6, v7, :cond_2

    .line 322
    goto :goto_1

    .line 324
    :cond_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, "txDrain":Ljava/lang/String;
    if-ltz v5, :cond_4

    const/4 v8, 0x5

    if-lt v5, v8, :cond_3

    goto :goto_4

    .line 331
    :cond_3
    sget-object v7, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_MAP:[I

    aget v7, v7, v5

    .line 332
    .local v7, "modemTxLevel":I
    const/high16 v8, 0x30000000

    or-int/2addr v8, v7

    or-int/2addr v8, v1

    or-int/2addr v8, v2

    .line 333
    .local v8, "txKey":I
    invoke-virtual {p0, v8, v6}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 334
    goto :goto_5

    .line 326
    .end local v7    # "modemTxLevel":I
    .end local v8    # "txKey":I
    :cond_4
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected tx level: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Must be between 0 and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    goto/16 :goto_1

    .line 312
    .end local v5    # "level":I
    .end local v6    # "txDrain":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    if-eq v5, v7, :cond_5

    .line 313
    goto/16 :goto_1

    .line 315
    :cond_5
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "rxDrain":Ljava/lang/String;
    const/high16 v6, 0x20000000

    or-int/2addr v6, v1

    or-int/2addr v6, v2

    .line 317
    .local v6, "rxKey":I
    invoke-virtual {p0, v6, v5}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 318
    nop

    .line 338
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "rxDrain":Ljava/lang/String;
    .end local v6    # "rxKey":I
    :goto_5
    goto/16 :goto_1

    .line 339
    :cond_6
    return-void

    .line 301
    .end local v1    # "ratType":I
    .end local v2    # "nrfType":I
    .end local v3    # "depth":I
    :catch_0
    move-exception v1

    .line 302
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    const-string v2, "Failed parse to active modem power constants"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x408272e3 -> :sswitch_1
        0x4c58d2b0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v0}, Landroid/util/SparseDoubleArray;->clear()V

    .line 461
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 468
    iget-object v0, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v0

    .line 469
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 470
    iget-object v2, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseDoubleArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/power/ModemPowerProfile;->keyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseDoubleArray;->valueAt(I)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(D)V

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist getAverageBatteryDrainMa(I)D
    .locals 7
    .param p1, "key"    # I

    .line 392
    move v0, p1

    .line 394
    .local v0, "bestKey":I
    iget-object v1, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v1, v0, v2, v3}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v4

    .line 395
    .local v4, "value":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    return-wide v4

    .line 399
    :cond_0
    const/high16 v1, 0xf0000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 401
    const v1, -0xf0001

    and-int/2addr v0, v1

    .line 402
    or-int/lit8 v0, v0, 0x0

    .line 403
    iget-object v1, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v1, v0, v2, v3}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v4

    .line 404
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    return-wide v4

    .line 407
    :cond_1
    const/high16 v1, 0xf00000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 409
    const v1, -0xf00001

    and-int/2addr v0, v1

    .line 410
    or-int/lit8 v0, v0, 0x0

    .line 411
    iget-object v1, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v1, v0, v2, v3}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v4

    .line 412
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    return-wide v4

    .line 415
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAverageBatteryDrainMaH called with unexpected key: 0x"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 417
    invoke-static {p1}, Lcom/android/internal/power/ModemPowerProfile;->keyToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    const-string v6, "ModemPowerProfile"

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-wide v2
.end method

.method public blacklist parseFromXml(Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 261
    .local v0, "depth":I
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 262
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "name":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string/jumbo v3, "sleep"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_1
    const-string v3, "idle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "active"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    :goto_1
    const/4 v3, 0x4

    packed-switch v2, :pswitch_data_0

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected element parsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ModemPowerProfile"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 279
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/power/ModemPowerProfile;->parseActivePowerConstantsFromXml(Landroid/content/res/XmlResourceParser;)V

    .line 280
    goto :goto_2

    .line 272
    :pswitch_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 273
    goto :goto_0

    .line 275
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "idleDrain":Ljava/lang/String;
    const/high16 v3, 0x10000000

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 277
    goto :goto_2

    .line 265
    .end local v2    # "idleDrain":Ljava/lang/String;
    :pswitch_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 266
    goto :goto_0

    .line 268
    :cond_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "sleepDrain":Ljava/lang/String;
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 270
    nop

    .line 284
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "sleepDrain":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 285
    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d080fa -> :sswitch_2
        0x313fd4 -> :sswitch_1
        0x6872ed7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setPowerConstant(ILjava/lang/String;)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseDoubleArray;->put(ID)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set power constant 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 380
    invoke-static {p1}, Lcom/android/internal/power/ModemPowerProfile;->keyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    const-string v2, "ModemPowerProfile"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
