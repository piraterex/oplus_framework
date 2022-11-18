.class public Landroid/nfc/cardemulation/AidGroup;
.super Ljava/lang/Object;
.source "AidGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o MAX_NUM_AIDS:I = 0x100

.field static final greylist-max-o TAG:Ljava/lang/String; = "AidGroup"


# instance fields
.field protected greylist aids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist category:Ljava/lang/String;

.field protected greylist description:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 154
    new-instance v0, Landroid/nfc/cardemulation/AidGroup$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/AidGroup$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    .line 93
    iput-object p1, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Landroid/nfc/cardemulation/AidGroup;->description:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 66
    .local p1, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_4

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "aid":Ljava/lang/String;
    invoke-static {v1}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    .end local v1    # "aid":Ljava/lang/String;
    goto :goto_0

    .line 75
    .restart local v1    # "aid":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid AID."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    .end local v1    # "aid":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Landroid/nfc/cardemulation/AidGroup;->isValidCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iput-object p2, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    goto :goto_1

    .line 81
    :cond_2
    const-string v0, "other"

    iput-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    .line 83
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .restart local v1    # "aid":Ljava/lang/String;
    iget-object v2, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v1    # "aid":Ljava/lang/String;
    goto :goto_2

    .line 87
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->description:Ljava/lang/String;

    .line 88
    return-void

    .line 71
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many AIDs in AID group."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No AIDS in AID group."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/nfc/cardemulation/AidGroup;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "category":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v1, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 179
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    const/4 v3, 0x0

    .line 181
    .local v3, "inGroup":Z
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 182
    .local v4, "eventType":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 183
    .local v5, "minDepth":I
    :goto_0
    const/4 v6, 0x1

    if-eq v4, v6, :cond_7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-lt v6, v5, :cond_7

    .line 184
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "tagName":Ljava/lang/String;
    const/4 v7, 0x2

    const-string v8, "aid-group"

    if-ne v4, v7, :cond_5

    .line 186
    const-string v7, "aid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x0

    const-string v10, "AidGroup"

    if-eqz v7, :cond_2

    .line 187
    if-eqz v3, :cond_1

    .line 188
    const-string/jumbo v7, "value"

    invoke-interface {p0, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "aid":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 190
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v7    # "aid":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 193
    :cond_1
    const-string v7, "Ignoring <aid> tag while not in group"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 196
    const-string v7, "category"

    invoke-interface {p0, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    if-nez v0, :cond_3

    .line 198
    const-string v7, "<aid-group> tag without valid category"

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-object v9

    .line 201
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 203
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring unexpected tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 205
    :cond_5
    const/4 v7, 0x3

    if-ne v4, v7, :cond_6

    .line 206
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 207
    new-instance v7, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v7, v1, v0}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object v2, v7

    .line 208
    goto :goto_2

    .line 211
    :cond_6
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 212
    .end local v6    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 213
    :cond_7
    :goto_2
    return-object v2
.end method

.method static greylist-max-o isValidCategory(Ljava/lang/String;)Z
    .locals 1
    .param p0, "category"    # Ljava/lang/String;

    .line 229
    const-string v0, "payment"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    const-string v0, "other"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 229
    :goto_1
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 133
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 134
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    .local v1, "aid":Ljava/lang/String;
    const-wide v2, 0x20900000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 136
    .end local v1    # "aid":Ljava/lang/String;
    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public greylist getAids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    return-object v0
.end method

.method public greylist getCategory()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AIDs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 118
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .end local v2    # "aid":Ljava/lang/String;
    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist writeAsXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    const-string v1, "aid-group"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    iget-object v2, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    const-string v3, "category"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    iget-object v2, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    .local v3, "aid":Ljava/lang/String;
    const-string v4, "aid"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    const-string/jumbo v5, "value"

    invoke-interface {p1, v0, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    .end local v3    # "aid":Ljava/lang/String;
    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 146
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 151
    :cond_0
    return-void
.end method
