.class public final Landroid/content/IntentFilter$AuthorityEntry;
.super Ljava/lang/Object;
.source "IntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorityEntry"
.end annotation


# instance fields
.field private final greylist-max-o mHost:Ljava/lang/String;

.field private final greylist-max-o mOrigHost:Ljava/lang/String;

.field private final greylist-max-o mPort:I

.field private final greylist-max-o mWild:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHost(Landroid/content/IntentFilter$AuthorityEntry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPort(Landroid/content/IntentFilter$AuthorityEntry;)I
    .locals 0

    iget p0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWild(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    return p0
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    .line 1109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    .line 1110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    .line 1111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    .line 1112
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1101
    iput-object p1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    .line 1102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    .line 1103
    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    .line 1104
    if-eqz p2, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    .line 1105
    return-void
.end method


# virtual methods
.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1122
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1124
    .local v0, "token":J
    iget-object v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1125
    iget-boolean v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1126
    iget v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1127
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1128
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1154
    instance-of v0, p1, Landroid/content/IntentFilter$AuthorityEntry;

    if-eqz v0, :cond_0

    .line 1155
    move-object v0, p1

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1156
    .local v0, "other":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v1

    return v1

    .line 1158
    .end local v0    # "other":Landroid/content/IntentFilter$AuthorityEntry;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHost()Ljava/lang/String;
    .locals 1

    .line 1131
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPort()I
    .locals 1

    .line 1135
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return v0
.end method

.method public whitelist match(Landroid/net/Uri;)I
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    .line 1172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;Z)I

    move-result v0

    return v0
.end method

.method public blacklist match(Landroid/net/Uri;Z)I
    .locals 5
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "wildcardSupported"    # Z

    .line 1183
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, "host":Ljava/lang/String;
    const/high16 v1, 0x300000

    const/4 v2, -0x2

    if-nez v0, :cond_1

    .line 1185
    if-eqz p2, :cond_0

    iget-boolean v3, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1187
    return v1

    .line 1189
    :cond_0
    return v2

    .line 1194
    :cond_1
    if-eqz p2, :cond_2

    const-string v3, "*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1195
    :cond_2
    iget-boolean v3, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eqz v3, :cond_4

    .line 1196
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1197
    return v2

    .line 1199
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1201
    :cond_4
    iget-object v3, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 1202
    return v2

    .line 1206
    :cond_5
    if-nez p2, :cond_7

    iget v3, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    if-ltz v3, :cond_7

    .line 1207
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    if-eq v3, v1, :cond_6

    .line 1208
    return v2

    .line 1210
    :cond_6
    const/high16 v1, 0x400000

    return v1

    .line 1212
    :cond_7
    return v1
.end method

.method public greylist-max-o match(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .locals 3
    .param p1, "other"    # Landroid/content/IntentFilter$AuthorityEntry;

    .line 1140
    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    iget-boolean v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1141
    return v2

    .line 1143
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1144
    return v2

    .line 1146
    :cond_1
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    iget v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    if-eq v0, v1, :cond_2

    .line 1147
    return v2

    .line 1149
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 1115
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1117
    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    return-void
.end method
