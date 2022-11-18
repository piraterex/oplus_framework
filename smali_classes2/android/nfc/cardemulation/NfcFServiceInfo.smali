.class public final Landroid/nfc/cardemulation/NfcFServiceInfo;
.super Ljava/lang/Object;
.source "NfcFServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_T3T_PMM:Ljava/lang/String; = "FFFFFFFFFFFFFFFF"

.field static final greylist-max-o TAG:Ljava/lang/String; = "NfcFServiceInfo"


# instance fields
.field final greylist-max-o mDescription:Ljava/lang/String;

.field greylist-max-o mDynamicNfcid2:Ljava/lang/String;

.field greylist-max-o mDynamicSystemCode:Ljava/lang/String;

.field final greylist-max-o mNfcid2:Ljava/lang/String;

.field final greylist-max-o mService:Landroid/content/pm/ResolveInfo;

.field final greylist-max-o mSystemCode:Ljava/lang/String;

.field final greylist-max-o mT3tPmm:Ljava/lang/String;

.field final greylist-max-o mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 296
    new-instance v0, Landroid/nfc/cardemulation/NfcFServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 18
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 110
    .local v4, "si":Landroid/content/pm/ServiceInfo;
    const/4 v5, 0x0

    .line 112
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v0, "android.nfc.cardemulation.host_nfcf_service"

    invoke-virtual {v4, v2, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v5, v0

    .line 113
    if-eqz v5, :cond_d

    .line 118
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 119
    .local v0, "eventType":I
    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    .line 121
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "host-nfcf-service"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 130
    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 131
    .local v9, "res":Landroid/content/res/Resources;
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    .line 132
    .local v10, "attrs":Landroid/util/AttributeSet;
    sget-object v11, Lcom/android/internal/R$styleable;->HostNfcFService:[I

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 134
    .local v11, "sa":Landroid/content/res/TypedArray;
    iput-object v3, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 135
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    .line 137
    const/4 v13, 0x0

    iput-object v13, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    .line 138
    iput-object v13, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    .line 139
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    const/4 v13, 0x0

    .line 142
    .local v13, "systemCode":Ljava/lang/String;
    const/4 v14, 0x0

    .line 143
    .local v14, "nfcid2":Ljava/lang/String;
    const/4 v15, 0x0

    .line 144
    .local v15, "t3tPmm":Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    move/from16 v17, v16

    .line 146
    .local v17, "depth":I
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v12

    const/4 v7, 0x3

    const-string v6, "NULL"

    if-ne v12, v7, :cond_1

    .line 147
    :try_start_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    move/from16 v12, v17

    .end local v17    # "depth":I
    .local v12, "depth":I
    if-le v7, v12, :cond_7

    goto :goto_2

    .line 146
    .end local v12    # "depth":I
    .restart local v17    # "depth":I
    :cond_1
    move/from16 v12, v17

    .line 147
    .end local v17    # "depth":I
    .restart local v12    # "depth":I
    :goto_2
    const/4 v7, 0x1

    if-eq v0, v7, :cond_7

    .line 148
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v8, v17

    .line 149
    const-string v7, "NfcFServiceInfo"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    :try_start_2
    const-string v2, "system-code-filter"

    .line 150
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v13, :cond_3

    .line 151
    sget-object v2, Lcom/android/internal/R$styleable;->SystemCodeFilter:[I

    invoke-virtual {v9, v10, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 153
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 154
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 155
    .end local v13    # "systemCode":Ljava/lang/String;
    .local v3, "systemCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidSystemCode(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 156
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid System Code: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v3, 0x0

    move-object v13, v3

    goto :goto_3

    .line 160
    :cond_2
    move-object v13, v3

    .end local v3    # "systemCode":Ljava/lang/String;
    .restart local v13    # "systemCode":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    .end local v2    # "a":Landroid/content/res/TypedArray;
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v17, v12

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    const-string v2, "nfcid2-filter"

    .line 162
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v14, :cond_5

    .line 163
    sget-object v2, Lcom/android/internal/R$styleable;->Nfcid2Filter:[I

    invoke-virtual {v9, v10, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 165
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 166
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 167
    .end local v14    # "nfcid2":Ljava/lang/String;
    .local v3, "nfcid2":Ljava/lang/String;
    const-string v14, "RANDOM"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 168
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 169
    invoke-static {v3}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidNfcid2(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid NFCID2: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v3, 0x0

    move-object v14, v3

    goto :goto_4

    .line 173
    :cond_4
    move-object v14, v3

    .end local v3    # "nfcid2":Ljava/lang/String;
    .restart local v14    # "nfcid2":Ljava/lang/String;
    :goto_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    .end local v2    # "a":Landroid/content/res/TypedArray;
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v17, v12

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    const-string v3, "t3tPmm-filter"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v15, :cond_6

    .line 176
    sget-object v3, Lcom/android/internal/R$styleable;->T3tPmmFilter:[I

    invoke-virtual {v9, v10, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 178
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    .line 180
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    .end local v3    # "a":Landroid/content/res/TypedArray;
    move-object/from16 v3, p2

    move v7, v2

    move/from16 v17, v12

    move-object/from16 v2, p1

    move v12, v6

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 174
    :cond_6
    const/4 v6, 0x0

    .line 146
    move-object/from16 v3, p2

    move v7, v2

    move/from16 v17, v12

    move-object/from16 v2, p1

    move v12, v6

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 183
    :cond_7
    if-nez v13, :cond_8

    move-object v2, v6

    goto :goto_5

    :cond_8
    move-object v2, v13

    :goto_5
    iput-object v2, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    .line 184
    if-nez v14, :cond_9

    goto :goto_6

    :cond_9
    move-object v6, v14

    :goto_6
    iput-object v6, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    .line 185
    if-nez v15, :cond_a

    const-string v2, "FFFFFFFFFFFFFFFF"

    goto :goto_7

    :cond_a
    move-object v2, v15

    :goto_7
    iput-object v2, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    .end local v0    # "eventType":I
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "depth":I
    .end local v13    # "systemCode":Ljava/lang/String;
    .end local v14    # "nfcid2":Ljava/lang/String;
    .end local v15    # "t3tPmm":Ljava/lang/String;
    if-eqz v5, :cond_b

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 192
    :cond_b
    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    .line 193
    return-void

    .line 126
    .restart local v0    # "eventType":I
    .restart local v8    # "tagName":Ljava/lang/String;
    :cond_c
    :try_start_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Meta-data does not start with <host-nfcf-service> tag"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    throw v2

    .line 114
    .end local v0    # "eventType":I
    .end local v8    # "tagName":Ljava/lang/String;
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No android.nfc.cardemulation.host_nfcf_service meta-data"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    throw v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create context for: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    :goto_8
    if-eqz v5, :cond_e

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 190
    :cond_e
    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "systemCode"    # Ljava/lang/String;
    .param p4, "dynamicSystemCode"    # Ljava/lang/String;
    .param p5, "nfcid2"    # Ljava/lang/String;
    .param p6, "dynamicNfcid2"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "t3tPmm"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 98
    iput-object p2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    .line 102
    iput-object p6, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    .line 103
    iput p7, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    .line 104
    iput-object p8, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") (UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    System Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    NFCID2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    T3tPmm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getT3tPmm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 343
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 344
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getT3tPmm()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 348
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 256
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 257
    :cond_0
    instance-of v1, p1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 258
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 260
    .local v1, "thatService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 261
    :cond_2
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v4

    if-eq v3, v4, :cond_3

    return v2

    .line 262
    :cond_3
    iget-object v3, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 263
    :cond_4
    iget-object v3, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    .line 264
    :cond_5
    iget-object v3, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    .line 265
    :cond_6
    return v0
.end method

.method public greylist-max-o getComponent()Landroid/content/ComponentName;
    .locals 3

    .line 196
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist-max-o getDescription()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getNfcid2()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public greylist-max-o getSystemCode()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public greylist-max-o getT3tPmm()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getUid()I
    .locals 1

    .line 221
    iget v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 270
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 233
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 229
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setOrReplaceDynamicNfcid2(Ljava/lang/String;)V
    .locals 0
    .param p1, "nfcid2"    # Ljava/lang/String;

    .line 213
    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public greylist-max-o setOrReplaceDynamicSystemCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemCode"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NfcFService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", System Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", dynamic System Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NFCID2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", dynamic NFCID2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", T3T PMM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 280
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 281
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    :cond_1
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 290
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    :cond_3
    iget v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    return-void
.end method
