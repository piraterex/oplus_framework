.class public final Landroid/app/admin/FactoryResetProtectionPolicy;
.super Ljava/lang/Object;
.source "FactoryResetProtectionPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/FactoryResetProtectionPolicy$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/FactoryResetProtectionPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEY_FACTORY_RESET_PROTECTION_ACCOUNT:Ljava/lang/String; = "factory_reset_protection_account"

.field private static final blacklist KEY_FACTORY_RESET_PROTECTION_ENABLED:Ljava/lang/String; = "factory_reset_protection_enabled"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "FactoryResetProtectionPolicy"


# instance fields
.field private final blacklist mFactoryResetProtectionAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFactoryResetProtectionEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Landroid/app/admin/FactoryResetProtectionPolicy$1;

    invoke-direct {v0}, Landroid/app/admin/FactoryResetProtectionPolicy$1;-><init>()V

    sput-object v0, Landroid/app/admin/FactoryResetProtectionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Z)V
    .locals 0
    .param p2, "factoryResetProtectionEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 71
    .local p1, "factoryResetProtectionAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    .line 73
    iput-boolean p2, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;ZLandroid/app/admin/FactoryResetProtectionPolicy-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/admin/FactoryResetProtectionPolicy;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method public static blacklist readFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/FactoryResetProtectionPolicy;
    .locals 7
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 207
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "factory_reset_protection_enabled"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 210
    .local v1, "factoryResetProtectionEnabled":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, "factoryResetProtectionAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 213
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    .line 214
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 215
    :cond_1
    if-eq v5, v4, :cond_0

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    .line 216
    goto :goto_0

    .line 218
    :cond_2
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "factory_reset_protection_account"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 219
    goto :goto_0

    .line 221
    :cond_3
    const-string/jumbo v4, "value"

    .line 222
    invoke-interface {p0, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_4
    new-instance v4, Landroid/app/admin/FactoryResetProtectionPolicy;

    invoke-direct {v4, v2, v1}, Landroid/app/admin/FactoryResetProtectionPolicy;-><init>(Ljava/util/List;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 227
    .end local v1    # "factoryResetProtectionEnabled":Z
    .end local v2    # "factoryResetProtectionAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "outerDepth":I
    .end local v5    # "type":I
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FactoryResetProtectionPolicy"

    const-string v3, "Reading from xml failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 262
    const-string v0, "factoryResetProtectionEnabled="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget-boolean v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 265
    const-string v0, "factoryResetProtectionAccounts="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 268
    iget-object v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 271
    return-void
.end method

.method public whitelist getFactoryResetProtectionAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    return-object v0
.end method

.method public whitelist isFactoryResetProtectionEnabled()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    return v0
.end method

.method public blacklist isNotEmpty()Z
    .locals 1

    .line 255
    iget-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FactoryResetProtectionPolicy{mFactoryResetProtectionAccounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFactoryResetProtectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 162
    iget-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 163
    .local v0, "accountsCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    .local v2, "account":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    .end local v2    # "account":Ljava/lang/String;
    goto :goto_0

    .line 167
    :cond_0
    iget-boolean v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 168
    return-void
.end method

.method public blacklist writeToXml(Landroid/util/TypedXmlSerializer;)V
    .locals 5
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget-boolean v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionEnabled:Z

    const/4 v1, 0x0

    const-string v2, "factory_reset_protection_enabled"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    iget-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy;->mFactoryResetProtectionAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    .local v2, "account":Ljava/lang/String;
    const-string v3, "factory_reset_protection_account"

    invoke-interface {p1, v1, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    const-string/jumbo v4, "value"

    invoke-interface {p1, v1, v4, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    invoke-interface {p1, v1, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    .end local v2    # "account":Ljava/lang/String;
    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method
