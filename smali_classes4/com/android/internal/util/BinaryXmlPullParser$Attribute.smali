.class Lcom/android/internal/util/BinaryXmlPullParser$Attribute;
.super Ljava/lang/Object;
.source "BinaryXmlPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/BinaryXmlPullParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attribute"
.end annotation


# instance fields
.field public blacklist name:Ljava/lang/String;

.field public blacklist type:I

.field public blacklist valueBytes:[B

.field public blacklist valueDouble:D

.field public blacklist valueFloat:F

.field public blacklist valueInt:I

.field public blacklist valueLong:J

.field public blacklist valueString:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/BinaryXmlPullParser$Attribute-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getValueBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 883
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 899
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :sswitch_0
    return v1

    .line 885
    :sswitch_1
    return v2

    .line 890
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    return v2

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    return v1

    .line 895
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x30 -> :sswitch_2
        0xc0 -> :sswitch_1
        0xd0 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getValueBytesBase64()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 764
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 778
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueBytes:[B

    return-object v0

    .line 773
    :sswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 766
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_2
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x30 -> :sswitch_1
        0x40 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getValueBytesHex()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 745
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 759
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueBytes:[B

    return-object v0

    .line 754
    :sswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/BinaryXmlPullParser;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 747
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_2
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x30 -> :sswitch_1
        0x40 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getValueDouble()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 867
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 878
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :sswitch_0
    iget-wide v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueDouble:D

    return-wide v0

    .line 873
    :sswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x30 -> :sswitch_1
        0xb0 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getValueFloat()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 851
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 862
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :sswitch_0
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueFloat:F

    return v0

    .line 857
    :sswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x30 -> :sswitch_1
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getValueInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 783
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 795
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :sswitch_0
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueInt:I

    return v0

    .line 790
    :sswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x30 -> :sswitch_1
        0x60 -> :sswitch_0
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getValueIntHex()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 800
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 812
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :sswitch_0
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueInt:I

    return v0

    .line 807
    :sswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x30 -> :sswitch_1
        0x60 -> :sswitch_0
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getValueLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 817
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 829
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :sswitch_0
    iget-wide v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueLong:J

    return-wide v0

    .line 824
    :sswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x30 -> :sswitch_1
        0x80 -> :sswitch_0
        0x90 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getValueLongHex()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 834
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 846
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :sswitch_0
    iget-wide v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueLong:J

    return-wide v0

    .line 841
    :sswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x30 -> :sswitch_1
        0x80 -> :sswitch_0
        0x90 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist getValueString()Ljava/lang/String;
    .locals 4

    .line 712
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 740
    return-object v2

    .line 737
    :sswitch_0
    const-string v0, "false"

    return-object v0

    .line 735
    :sswitch_1
    const-string/jumbo v0, "true"

    return-object v0

    .line 733
    :sswitch_2
    iget-wide v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueDouble:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 731
    :sswitch_3
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueFloat:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 729
    :sswitch_4
    iget-wide v2, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueLong:J

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 727
    :sswitch_5
    iget-wide v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 725
    :sswitch_6
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueInt:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 723
    :sswitch_7
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueInt:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 721
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueBytes:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 719
    :sswitch_9
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueBytes:[B

    invoke-static {v0}, Lcom/android/internal/util/BinaryXmlPullParser;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 717
    :sswitch_a
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    return-object v0

    .line 714
    :sswitch_b
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_b
        0x20 -> :sswitch_a
        0x30 -> :sswitch_a
        0x40 -> :sswitch_9
        0x50 -> :sswitch_8
        0x60 -> :sswitch_7
        0x70 -> :sswitch_6
        0x80 -> :sswitch_5
        0x90 -> :sswitch_4
        0xa0 -> :sswitch_3
        0xb0 -> :sswitch_2
        0xc0 -> :sswitch_1
        0xd0 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist reset()V
    .locals 1

    .line 706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    .line 707
    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    .line 708
    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueBytes:[B

    .line 709
    return-void
.end method
