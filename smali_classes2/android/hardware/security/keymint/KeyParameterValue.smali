.class public final Landroid/hardware/security/keymint/KeyParameterValue;
.super Ljava/lang/Object;
.source "KeyParameterValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/keymint/KeyParameterValue$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/security/keymint/KeyParameterValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist algorithm:I = 0x1

.field public static final blacklist blob:I = 0xe

.field public static final blacklist blockMode:I = 0x2

.field public static final blacklist boolValue:I = 0xa

.field public static final blacklist dateTime:I = 0xd

.field public static final blacklist digest:I = 0x4

.field public static final blacklist ecCurve:I = 0x5

.field public static final blacklist hardwareAuthenticatorType:I = 0x8

.field public static final blacklist integer:I = 0xb

.field public static final blacklist invalid:I = 0x0

.field public static final blacklist keyPurpose:I = 0x7

.field public static final blacklist longInteger:I = 0xc

.field public static final blacklist origin:I = 0x6

.field public static final blacklist paddingMode:I = 0x3

.field public static final blacklist securityLevel:I = 0x9


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 276
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue$1;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameterValue$1;-><init>()V

    sput-object v0, Landroid/hardware/security/keymint/KeyParameterValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_tag:I

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_tag:I

    .line 39
    iput-object p2, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/security/keymint/KeyParameterValue-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 431
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 434
    return-void

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/security/keymint/KeyParameterValue;->_tagString(I)Ljava/lang/String;

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

    .line 458
    iput p1, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_tag:I

    .line 459
    iput-object p2, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    .line 460
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 437
    packed-switch p1, :pswitch_data_0

    .line 454
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

    .line 452
    :pswitch_0
    const-string v0, "blob"

    return-object v0

    .line 451
    :pswitch_1
    const-string v0, "dateTime"

    return-object v0

    .line 450
    :pswitch_2
    const-string v0, "longInteger"

    return-object v0

    .line 449
    :pswitch_3
    const-string v0, "integer"

    return-object v0

    .line 448
    :pswitch_4
    const-string v0, "boolValue"

    return-object v0

    .line 447
    :pswitch_5
    const-string v0, "securityLevel"

    return-object v0

    .line 446
    :pswitch_6
    const-string v0, "hardwareAuthenticatorType"

    return-object v0

    .line 445
    :pswitch_7
    const-string v0, "keyPurpose"

    return-object v0

    .line 444
    :pswitch_8
    const-string v0, "origin"

    return-object v0

    .line 443
    :pswitch_9
    const-string v0, "ecCurve"

    return-object v0

    .line 442
    :pswitch_a
    const-string v0, "digest"

    return-object v0

    .line 441
    :pswitch_b
    const-string v0, "paddingMode"

    return-object v0

    .line 440
    :pswitch_c
    const-string v0, "blockMode"

    return-object v0

    .line 439
    :pswitch_d
    const-string v0, "algorithm"

    return-object v0

    .line 438
    :pswitch_e
    const-string v0, "invalid"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static blacklist algorithm(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # I

    .line 64
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist blob([B)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 2
    .param p0, "_value"    # [B

    .line 259
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist blockMode(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # I

    .line 79
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # Z

    .line 199
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dateTime(J)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # J

    .line 244
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist digest(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # I

    .line 109
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ecCurve(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # I

    .line 124
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist hardwareAuthenticatorType(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # I

    .line 169
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist integer(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # I

    .line 214
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist invalid(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # I

    .line 49
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyPurpose(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # I

    .line 154
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist longInteger(J)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # J

    .line 229
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist origin(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # I

    .line 139
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist paddingMode(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # I

    .line 94
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist securityLevel(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .locals 3
    .param p0, "_value"    # I

    .line 184
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getTag()I

    .line 427
    return v0
.end method

.method public blacklist getAlgorithm()I
    .locals 1

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 69
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getBlob()[B
    .locals 1

    .line 263
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 264
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getBlockMode()I
    .locals 1

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 84
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getBoolValue()Z
    .locals 1

    .line 203
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 204
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getDateTime()J
    .locals 2

    .line 248
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 249
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDigest()I
    .locals 1

    .line 113
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 114
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getEcCurve()I
    .locals 1

    .line 128
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 129
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getHardwareAuthenticatorType()I
    .locals 1

    .line 173
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 174
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getInteger()I
    .locals 1

    .line 218
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 219
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getInvalid()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 54
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getKeyPurpose()I
    .locals 1

    .line 158
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 159
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getLongInteger()J
    .locals 2

    .line 233
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 234
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getOrigin()I
    .locals 1

    .line 143
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 144
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingMode()I
    .locals 1

    .line 98
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 99
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getSecurityLevel()I
    .locals 1

    .line 188
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 189
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 43
    iget v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 342
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 419
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

    .line 415
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 416
    .local v1, "_aidl_value":[B
    invoke-direct {p0, v0, v1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 417
    return-void

    .line 410
    .end local v1    # "_aidl_value":[B
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 411
    .local v1, "_aidl_value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 412
    return-void

    .line 405
    .end local v1    # "_aidl_value":J
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 406
    .restart local v1    # "_aidl_value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 407
    return-void

    .line 400
    .end local v1    # "_aidl_value":J
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 401
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 402
    return-void

    .line 395
    .end local v1    # "_aidl_value":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 396
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 397
    return-void

    .line 390
    .end local v1    # "_aidl_value":Z
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 391
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 392
    return-void

    .line 385
    .end local v1    # "_aidl_value":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 386
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 387
    return-void

    .line 380
    .end local v1    # "_aidl_value":I
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 381
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 382
    return-void

    .line 375
    .end local v1    # "_aidl_value":I
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 376
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 377
    return-void

    .line 370
    .end local v1    # "_aidl_value":I
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 371
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 372
    return-void

    .line 365
    .end local v1    # "_aidl_value":I
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 366
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 367
    return-void

    .line 360
    .end local v1    # "_aidl_value":I
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 361
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 362
    return-void

    .line 355
    .end local v1    # "_aidl_value":I
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 356
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 357
    return-void

    .line 350
    .end local v1    # "_aidl_value":I
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 352
    return-void

    .line 345
    .end local v1    # "_aidl_value":I
    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 346
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 347
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public blacklist setAlgorithm(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 74
    return-void
.end method

.method public blacklist setBlob([B)V
    .locals 1
    .param p1, "_value"    # [B

    .line 268
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 269
    return-void
.end method

.method public blacklist setBlockMode(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 89
    return-void
.end method

.method public blacklist setBoolValue(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 208
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 209
    return-void
.end method

.method public blacklist setDateTime(J)V
    .locals 2
    .param p1, "_value"    # J

    .line 253
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 254
    return-void
.end method

.method public blacklist setDigest(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 119
    return-void
.end method

.method public blacklist setEcCurve(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method public blacklist setHardwareAuthenticatorType(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 179
    return-void
.end method

.method public blacklist setInteger(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 224
    return-void
.end method

.method public blacklist setInvalid(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public blacklist setKeyPurpose(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 164
    return-void
.end method

.method public blacklist setLongInteger(J)V
    .locals 2
    .param p1, "_value"    # J

    .line 238
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 239
    return-void
.end method

.method public blacklist setOrigin(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 148
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 149
    return-void
.end method

.method public blacklist setPaddingMode(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 104
    return-void
.end method

.method public blacklist setSecurityLevel(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 194
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 289
    iget v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 334
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 331
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 332
    goto/16 :goto_0

    .line 328
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getLongInteger()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 329
    goto :goto_0

    .line 325
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getInteger()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    goto :goto_0

    .line 322
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getBoolValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 323
    goto :goto_0

    .line 319
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getSecurityLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    goto :goto_0

    .line 316
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getHardwareAuthenticatorType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    goto :goto_0

    .line 313
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    goto :goto_0

    .line 310
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getOrigin()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    goto :goto_0

    .line 307
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    goto :goto_0

    .line 304
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    goto :goto_0

    .line 301
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getPaddingMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    goto :goto_0

    .line 298
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlockMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    goto :goto_0

    .line 295
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getAlgorithm()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    goto :goto_0

    .line 292
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getInvalid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    nop

    .line 337
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
