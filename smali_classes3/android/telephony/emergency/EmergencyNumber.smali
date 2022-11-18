.class public final Landroid/telephony/emergency/EmergencyNumber;
.super Ljava/lang/Object;
.source "EmergencyNumber.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/emergency/EmergencyNumber$EmergencyCallRouting;,
        Landroid/telephony/emergency/EmergencyNumber$EmergencyNumberSources;,
        Landroid/telephony/emergency/EmergencyNumber$EmergencyServiceCategories;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/telephony/emergency/EmergencyNumber;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMERGENCY_CALL_ROUTING_EMERGENCY:I = 0x1

.field public static final whitelist EMERGENCY_CALL_ROUTING_NORMAL:I = 0x2

.field public static final whitelist EMERGENCY_CALL_ROUTING_UNKNOWN:I = 0x0

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_DATABASE:I = 0x10

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_DEFAULT:I = 0x8

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_MODEM_CONFIG:I = 0x4

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_NETWORK_SIGNALING:I = 0x1

.field private static final blacklist EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMERGENCY_NUMBER_SOURCE_SIM:I = 0x2

.field public static final blacklist EMERGENCY_NUMBER_SOURCE_TEST:I = 0x20

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_AIEC:I = 0x40

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_AMBULANCE:I = 0x2

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_FIRE_BRIGADE:I = 0x4

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_MARINE_GUARD:I = 0x8

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_MIEC:I = 0x20

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_MOUNTAIN_RESCUE:I = 0x10

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_POLICE:I = 0x1

.field private static final blacklist EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMERGENCY_SERVICE_CATEGORY_UNSPECIFIED:I = 0x0

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "EmergencyNumber"


# instance fields
.field private final blacklist mCountryIso:Ljava/lang/String;

.field private final blacklist mEmergencyCallRouting:I

.field private final blacklist mEmergencyNumberSourceBitmask:I

.field private final blacklist mEmergencyServiceCategoryBitmask:I

.field private final blacklist mEmergencyUrns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMnc:Ljava/lang/String;

.field private final blacklist mNumber:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;

    .line 139
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    const/16 v6, 0x40

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;

    .line 207
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v0, Landroid/telephony/emergency/EmergencyNumber$1;

    invoke-direct {v0}, Landroid/telephony/emergency/EmergencyNumber$1;-><init>()V

    sput-object v0, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    .line 275
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;
    .param p4, "emergencyServiceCategories"    # I
    .param p6, "emergencyNumberSources"    # I
    .param p7, "emergencyCallRouting"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 256
    .local p5, "emergencyUrns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    .line 258
    iput-object p2, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    .line 259
    iput-object p3, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    .line 260
    iput p4, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    .line 261
    iput-object p5, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    .line 262
    iput p6, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    .line 263
    iput p7, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    .line 264
    return-void
.end method

.method public static blacklist areSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Z
    .locals 3
    .param p0, "first"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p1, "second"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 647
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 648
    return v1

    .line 650
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    return v1

    .line 653
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 654
    return v1

    .line 656
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v0

    .line 657
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 658
    return v1

    .line 660
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 661
    return v1

    .line 663
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 664
    return v1

    .line 668
    :cond_5
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v2

    .line 669
    invoke-virtual {p1, v0}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 670
    return v1

    .line 672
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist getDisplayPriorityScore()I
    .locals 2

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "score":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    add-int/lit8 v0, v0, 0x10

    .line 537
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    add-int/lit8 v0, v0, 0x8

    .line 540
    :cond_1
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 541
    add-int/lit8 v0, v0, 0x4

    .line 543
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 544
    add-int/lit8 v0, v0, 0x2

    .line 546
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 547
    add-int/lit8 v0, v0, 0x1

    .line 549
    :cond_4
    return v0
.end method

.method public static blacklist mergeSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Landroid/telephony/emergency/EmergencyNumber;
    .locals 9
    .param p0, "first"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p1, "second"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 687
    invoke-static {p0, p1}, Landroid/telephony/emergency/EmergencyNumber;->areSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    new-instance v0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v4

    .line 689
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v5

    .line 690
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v6

    .line 691
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v1

    .line 692
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v7

    or-int/2addr v7, v1

    .line 693
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 688
    return-object v0

    .line 695
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 604
    .local p0, "emergencyNumberList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/emergency/EmergencyNumber;>;"
    if-nez p0, :cond_0

    .line 605
    return-void

    .line 607
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 608
    .local v0, "duplicatedEmergencyNumberPosition":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 609
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 610
    nop

    .line 611
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    .line 610
    invoke-static {v3, v4}, Landroid/telephony/emergency/EmergencyNumber;->areSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found unexpected duplicate numbers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 613
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 612
    const-string v4, "EmergencyNumber"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    nop

    .line 616
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/emergency/EmergencyNumber;

    .line 615
    invoke-static {v3, v4}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameEmergencyNumbers(Landroid/telephony/emergency/EmergencyNumber;Landroid/telephony/emergency/EmergencyNumber;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 608
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    .end local v1    # "i":I
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_5

    .line 625
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 626
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 624
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 629
    .end local v1    # "i":I
    :cond_5
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 630
    return-void
.end method

.method private blacklist serviceUnspecified()Z
    .locals 1

    .line 408
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist validateEmergencyNumberAddress(Ljava/lang/String;)Z
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .line 705
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 706
    return v0

    .line 708
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v1, v3

    .line 709
    .local v4, "c":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 710
    return v0

    .line 708
    .end local v4    # "c":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 713
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist compareTo(Landroid/telephony/emergency/EmergencyNumber;)I
    .locals 4
    .param p1, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 562
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->getDisplayPriorityScore()I

    move-result v0

    .line 563
    invoke-direct {p1}, Landroid/telephony/emergency/EmergencyNumber;->getDisplayPriorityScore()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    .line 564
    return v2

    .line 565
    :cond_0
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->getDisplayPriorityScore()I

    move-result v0

    .line 566
    invoke-direct {p1}, Landroid/telephony/emergency/EmergencyNumber;->getDisplayPriorityScore()I

    move-result v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    .line 567
    return v3

    .line 568
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 570
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 572
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 573
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 574
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v0

    .line 575
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 577
    nop

    .line 576
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v0

    .line 577
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v1

    if-le v0, v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    .line 576
    :goto_0
    return v2

    .line 578
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 580
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 582
    :cond_7
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    .line 583
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 585
    nop

    .line 584
    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    .line 585
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v1

    if-le v0, v1, :cond_8

    goto :goto_1

    :cond_8
    move v2, v3

    .line 584
    :goto_1
    return v2

    .line 587
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p0, p1}, Landroid/telephony/emergency/EmergencyNumber;->compareTo(Landroid/telephony/emergency/EmergencyNumber;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 499
    const-class v0, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 500
    return v1

    .line 502
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 503
    .local v0, "other":Landroid/telephony/emergency/EmergencyNumber;
    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    .line 505
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    iget v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    iget-object v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    .line 507
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    iget v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    iget v3, v0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 503
    :goto_0
    return v1
.end method

.method public whitelist getCountryIso()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEmergencyCallRouting()I
    .locals 1

    .line 478
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    return v0
.end method

.method public blacklist getEmergencyNumberSourceBitmask()I
    .locals 1

    .line 438
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    return v0
.end method

.method public whitelist getEmergencyNumberSources()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_NUMBER_SOURCE_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 449
    .local v2, "source":Ljava/lang/Integer;
    iget v3, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 450
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    .end local v2    # "source":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 453
    :cond_1
    return-object v0
.end method

.method public whitelist getEmergencyServiceCategories()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->serviceUnspecified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-object v0

    .line 376
    :cond_0
    sget-object v1, Landroid/telephony/emergency/EmergencyNumber;->EMERGENCY_SERVICE_CATEGORY_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 377
    .local v2, "category":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/telephony/emergency/EmergencyNumber;->isInEmergencyServiceCategories(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v2    # "category":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 381
    :cond_2
    return-object v0
.end method

.method public blacklist getEmergencyServiceCategoryBitmask()I
    .locals 1

    .line 343
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    return v0
.end method

.method public blacklist getEmergencyServiceCategoryBitmaskInternalDial()I
    .locals 2

    .line 355
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 356
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_0
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    return v0
.end method

.method public whitelist getEmergencyUrns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMnc()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNumber()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 514
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    .line 515
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 514
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isFromSources(I)Z
    .locals 1
    .param p1, "sources"    # I

    .line 465
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isInEmergencyServiceCategories(I)Z
    .locals 2
    .param p1, "categories"    # I

    .line 421
    if-nez p1, :cond_0

    .line 422
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->serviceUnspecified()Z

    move-result v0

    return v0

    .line 424
    :cond_0
    invoke-direct {p0}, Landroid/telephony/emergency/EmergencyNumber;->serviceUnspecified()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 425
    return v1

    .line 427
    :cond_1
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmergencyNumber:Number-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|CountryIso-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|Mnc-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|ServiceCategories-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    .line 491
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|Urns-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|Sources-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    .line 493
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|Routing-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    .line 494
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 280
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyServiceCategoryBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 285
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyNumberSourceBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v0, p0, Landroid/telephony/emergency/EmergencyNumber;->mEmergencyCallRouting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    return-void
.end method
