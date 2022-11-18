.class public final Landroid/os/AggregateBatteryConsumer;
.super Landroid/os/BatteryConsumer;
.source "AggregateBatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AggregateBatteryConsumer$Builder;
    }
.end annotation


# static fields
.field static final blacklist COLUMN_COUNT:I = 0x3

.field static final blacklist COLUMN_INDEX_CONSUMED_POWER:I = 0x2

.field static final blacklist COLUMN_INDEX_SCOPE:I = 0x1

.field static final blacklist CONSUMER_TYPE_AGGREGATE:I


# direct methods
.method private constructor blacklist <init>(Landroid/os/AggregateBatteryConsumer$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/os/AggregateBatteryConsumer$Builder;

    .line 46
    iget-object v0, p1, Landroid/os/AggregateBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, p1, Landroid/os/AggregateBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v1}, Landroid/os/PowerComponents$Builder;->build()Landroid/os/PowerComponents;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/os/BatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/PowerComponents;)V

    .line 47
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/AggregateBatteryConsumer$Builder;Landroid/os/AggregateBatteryConsumer-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/AggregateBatteryConsumer;-><init>(Landroid/os/AggregateBatteryConsumer$Builder;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .locals 0
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 42
    invoke-direct {p0, p1}, Landroid/os/BatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    .line 43
    return-void
.end method

.method static blacklist parseXml(Landroid/util/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V
    .locals 9
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    const-string/jumbo v1, "scope"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 77
    .local v1, "scope":I
    invoke-virtual {p1, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    .line 79
    .local v2, "consumerBuilder":Landroid/os/AggregateBatteryConsumer$Builder;
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v3

    .line 80
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "aggregate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    nop

    .line 86
    const-string/jumbo v5, "power"

    invoke-interface {p0, v0, v5}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v7

    .line 85
    invoke-virtual {v2, v7, v8}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 88
    :goto_0
    const/4 v0, 0x3

    if-ne v3, v0, :cond_0

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    if-eq v3, v0, :cond_2

    .line 91
    if-ne v3, v4, :cond_1

    .line 92
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "power_components"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, v2, Landroid/os/AggregateBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-static {p0, v0}, Landroid/os/PowerComponents;->parseXml(Landroid/util/TypedXmlPullParser;Landroid/os/PowerComponents$Builder;)V

    .line 96
    :cond_1
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 98
    :cond_2
    return-void

    .line 82
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Invalid XML parser state"

    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Z)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "skipEmptyComponents"    # Z

    .line 55
    iget-object v0, p0, Landroid/os/AggregateBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerComponents;->dump(Ljava/io/PrintWriter;Z)V

    .line 56
    return-void
.end method

.method public blacklist getConsumedPower()D
    .locals 2

    .line 60
    iget-object v0, p0, Landroid/os/AggregateBatteryConsumer;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getScope()I
    .locals 2

    .line 50
    iget-object v0, p0, Landroid/os/AggregateBatteryConsumer;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v0

    return v0
.end method

.method blacklist writeToXml(Landroid/util/TypedXmlSerializer;I)V
    .locals 5
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "scope"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    const-string v1, "aggregate"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    const-string/jumbo v2, "scope"

    invoke-interface {p1, v0, v2, p2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    invoke-virtual {p0}, Landroid/os/AggregateBatteryConsumer;->getConsumedPower()D

    move-result-wide v2

    const-string/jumbo v4, "power"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    iget-object v2, p0, Landroid/os/AggregateBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v2, p1}, Landroid/os/PowerComponents;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    .line 70
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    return-void
.end method
