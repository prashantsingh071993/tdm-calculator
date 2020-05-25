-- This file inserts current records (as of May 13, 2020) that were on the heroku "production" environment

SET IDENTITY_INSERT [dbo].[Login] ON

INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (5, N'Jim', N'Darragh', N'jim@entrotech.net', CAST(N'2019-12-23T01:03:31.7600000' AS DateTime2), 0, 0, N'$2b$10$h/vbxgUR6i/9M.cVZLSeUui9LmW1JRU4Q86Eq6hWv/3d.hxhnDuEi', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (6, N'Joe', N'Darragh', N'joedarragh@dispostable.com', CAST(N'2019-12-23T01:08:11.3300000' AS DateTime2), 1, 0, N'$2b$10$EZJAfY9NGriUiIeZBRbr/usEJcBGlES7ZKov.bKWn6R9b1cj0N60O', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (7, N'Susan', N'Darragh', N'suedarragh@dispostable.com', CAST(N'2019-12-23T01:23:50.5700000' AS DateTime2), 1, 0, N'$2b$10$7OoilRP6wkE/jIvc5.QmXuEz26kuMf7YU3rkL90KEna8DYL.UpmZ2', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (8, N'Marty', N'Mazur', N'mazur@dispostable.com', CAST(N'2019-12-23T01:48:34.0500000' AS DateTime2), 1, 0, N'$2b$10$ik3S4uqoHL9.1KQaIjasEer1QzwgXazQUPfR58pON/zWQg9d6LwAC', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (11, N'Sue', N'Darragh', N'sdarragh@dispostable.com', CAST(N'2019-12-23T20:02:34.0400000' AS DateTime2), 1, 0, N'$2b$10$SMlWWgrYDxo6j.MjhQi0kOCGtipDO0.iHTKBmgy3diWViFCTP9Nkq', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (12, N'Andrew', N'Darragh', N'adarragh@dispostable.com', CAST(N'2019-12-24T00:14:36.1733333' AS DateTime2), 1, 0, N'$2b$10$Rq8yyWudPdFQCuveIk6/t.9Qwig.oCGuzqxckCGck1lDKp0WfLQHi', 1)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (13, N'Chuck', N'Darragh', N'chuckdarragh@dispostable.com', CAST(N'2019-12-24T00:18:31.7966667' AS DateTime2), 1, 0, N'$2b$10$UouYejqwGKIrzSDuxATX8.4sFL4imsWia99jPCkpaFu3szvIWHHNC', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (14, N'Catherine', N'Darragh', N'catherinedarragh@dispostable.com', CAST(N'2019-12-24T00:29:18.7833333' AS DateTime2), 1, 0, N'$2b$10$mZI3xXTH4SMOMAVcr/6oauGuEKoSoFsPdsXyJRbVA.TIKrakI6G/G', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (15, N'Hank', N'Smith', N'hsmith@dispostable.com', CAST(N'2019-12-24T01:56:29.9066667' AS DateTime2), 0, 0, N'$2b$10$gSnudpt6rapNxCsqs3lcqO6fgb2P9gm1nR8wn3cAFHB8Jc8tNJbKC', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (16, N'Bill', N'Jones', N'bjones@dispostable.com', CAST(N'2019-12-24T02:00:35.4200000' AS DateTime2), 1, 0, N'$2b$10$iaXORI7EdcpYRtZe3PeHy.VWrCK0EBwn8DNGUxOgPZ6DcNZirVme2', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (17, N'George', N'Washington', N'gw@dispostable.com', CAST(N'2019-12-24T02:06:47.3733333' AS DateTime2), 1, 0, N'$2b$10$KWvBJqEOQPB/du5b0mUoMuRRnfz5xxUaqBcpVQWzQLGm0eMCZQ4uO', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (18, N'Edna', N'Darragh', N'edna@dispostable.com', CAST(N'2019-12-24T07:06:18.9900000' AS DateTime2), 1, 0, N'$2b$10$tKEbWrCyPDJPXpP3dD1tauSHXutSmReb88iGi/NR0PVCIQS8rQtUy', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (19, N'Claire', N'Nguyen', N'claire1@tdm.calc', CAST(N'2019-12-29T02:33:31.8566667' AS DateTime2), 0, 0, N'$2b$10$T.Ju0HFR81e3UAsuVo8OheoqMp68btttTmcXnGGJX7yL2LdbdKESu', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (26, N'Bonnie', N'Wolfe', N'bonnie@hackforla.org', CAST(N'2020-01-01T06:42:10.4966667' AS DateTime2), 1, 1, N'$2b$10$d2oquskaTHWcIt73JVNfKebEPoV5EEmOB.L5OCByr9KzG/x6TO47O', 1)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (27, N'Bonnie', N'Wolfe', N'experimentsinhonesty@gmail.com', CAST(N'2020-01-02T21:52:13.0966667' AS DateTime2), 1, 1, N'$2b$10$bkSnUlGfO9Njp4PGhGkIFOkdGBOaZh89lOGNoAzzDYY3i3.Uw3jc2', 1)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (28, N'Bonnie', N'Wolfe', N'test@hackforla.org', CAST(N'2020-01-06T00:23:42.9100000' AS DateTime2), 0, 0, N'$2b$10$kxFnM5b3QWePt5nCvoz.c.IGpZR.WqFDU7M5sS3G4rBm35LgCA7yS', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (29, N'bonnie2', N'wolfe', N'bonnie2@hackforla.org', CAST(N'2020-01-06T18:57:58.0466667' AS DateTime2), 0, 0, N'$2b$10$YB0SJQjWNrdNlgNZYvqHnORpZVBjWIl.HsEmdxtfMCHYAzwbJCkIq', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (31, N'Claire', N'Nguyen', N'claire@tdm.com', CAST(N'2020-01-07T05:44:18.9433333' AS DateTime2), 0, 0, N'$2b$10$pGl1xTr2K5Sw.KYHRJLqjus1BS1Vh.ra.YzraTbhrUZiQtTKV4i56', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (32, N'Claire', N'Nguyen', N'claire@tdm.calc', CAST(N'2020-01-07T05:44:35.8833333' AS DateTime2), 0, 0, N'$2b$10$Jb90n3JqsgwhSMiq5HUd6uewWZxJaPhGvlqugMA.v76RlfeB0BEka', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (33, N'Test', N'Person', N'bradley@dispostable.com', CAST(N'2020-01-08T03:50:09.8633333' AS DateTime2), 1, 0, N'$2b$10$BSeEdQrcIz/cLTGaKsFcHO9Qr0FZHIBQpiDzb3HhLU4oXoTSNvFT6', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (35, N'John', N'Darragh', N'darragh@entrotech.net', CAST(N'2020-01-10T18:07:14.8300000' AS DateTime2), 1, 1, N'$2b$10$NEFCzmVFBHUdTzZCpyqtluWOGXRJnb6qqrfCAib8ehpXvMMKAsLte', 1)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (37, N'LA', N'DOT', N'ladot@dispostable.com', CAST(N'2020-01-10T22:13:30.3066667' AS DateTime2), 1, 1, N'$2b$10$Wis7xCVUKsRIxSds2WuTFOW2Kd7EoJ7EkZapuyTRA05Oe4n4uW0jq', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (40, N'Mindy', N'Morgan', N'multimindia@gmail.com', CAST(N'2020-01-14T05:08:04.1533333' AS DateTime2), 1, 0, N'$2b$10$yAkBzn/unJFRTPTA7lCpyuBBaxvd05cawLVrS5L4.9.9K3F4kW1X6', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (41, N'Bob', N'Saga', N'bob-saga@dispostable.com', CAST(N'2020-01-14T05:59:37.5066667' AS DateTime2), 1, 0, N'$2b$10$Zn6JdZwDAsxExeXdBuZ4cu1E9fDQMHwtzjPABHgHmTstwOocoSvoq', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (42, N'Keara', N'Darragh', N'keara@dispostable.com', CAST(N'2020-01-15T02:44:26.1300000' AS DateTime2), 0, 0, N'$2b$10$CtiU53d9r4YBBrEbHjtAA.fDNpfdtumL8n4dsZoa4gzC.MMTO0hMi', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (43, N'Fang', N'Liu', N'fang@dispostable.com', CAST(N'2020-01-16T00:31:49.6000000' AS DateTime2), 1, 0, N'$2b$10$hStiQR.tIJAA4YRZdsYuJeZWoJdwHstlBR0LzA2383Rsza/qVxs4a', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (44, N'Bonnie', N'Wolfe', N'testtdm@hackforla.org', CAST(N'2020-01-18T18:25:23.4600000' AS DateTime2), 0, 0, N'$2b$10$DQRb.m21IDcqlzu1UmBcIO49fuXTgE2lreV0nx4h6cXkcWkOvWlSu', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (46, N'Rance', N'Smith', N'rvsmith1@student.fullsail.edu', CAST(N'2020-01-20T20:05:46.9733333' AS DateTime2), 0, 0, N'$2b$10$hRDlurWceHEYTyb1XEyGFubiP0KbyaDqTgpeFyoVjYUiOIZO1Pjra', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (47, N'Mister', N'Us', N'mr.urbanswag@gmail.com', CAST(N'2020-01-20T20:29:34.1900000' AS DateTime2), 0, 0, N'$2b$10$uNgFWDlOdDvoE8xN8n9m2OsRwvtAmcu6s9vZKvRxfkOrt07BcJXP2', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (51, N'Kevin', N'Howley', N'Kphowley@gmail.com', CAST(N'2020-01-30T01:04:03.4133333' AS DateTime2), 1, 1, N'$2b$10$yB3HykuSJvG63Qz.8fZCYeGcEdvsz8ROCOXhtFBZKfr3wwuZ/ZFAm', 1)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (52, N'Rosemary', N'McCarron', N'rosemary.mccarron@lacity.org', CAST(N'2020-01-30T01:36:10.3933333' AS DateTime2), 1, 0, N'$2b$10$969k2lX3.eWh1MBpljOytebRJ3k3L.p1rHDDb17IxDL.siP9djx4G', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (55, N'Joel', N'Hendrerson', N'joel@joelparkerhenderson.com', CAST(N'2020-01-30T18:09:24.6300000' AS DateTime2), 1, 0, N'$2b$10$rDOWGcuzyGf034V.vQ9AIOLfvC1ryBhJDk.0ecai0.Xg5QM1jKXRm', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (57, N'Louis', N'Mazza', N'louismazza@gmail.com', CAST(N'2020-02-26T03:56:42.3600000' AS DateTime2), 0, 0, N'$2b$10$HUNAKAAd/dh1lx3DpDIHlOSefSadPtrxbV52hqwG48Cari8jceh56', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (59, N'Louis', N'Mazza', N'mazzawestfall815@gmail.com', CAST(N'2020-02-26T04:10:20.0300000' AS DateTime2), 1, 0, N'$2b$10$6r5S/T1ehdL5NlS31BDoj.q9DkveNH.e9NrIPxuBcrDXm6zFNe5OG', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (61, N'Test', N'Regular User', N'test_regular_user@dispostable.com', CAST(N'2020-03-31T04:33:18.5300000' AS DateTime2), 1, 0, N'$2b$10$auGeVwCoIIo6FqHJrU0TiuXvuYVAWocQ6Fnksykr79Kmd5NUBwosu', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (62, N'Test', N'Admin', N'test_admin@dispostable.com', CAST(N'2020-03-31T04:35:38.9366667' AS DateTime2), 1, 1, N'$2b$10$f84kxlPwuEDmtBo7piDNuesqXoLQf561jIiM/cH/S9eLztKbXG8yq', 0)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (63, N'Test', N'Security Admin', N'test_security_admin@dispostable.com', CAST(N'2020-03-31T04:37:42.1700000' AS DateTime2), 1, 1, N'$2b$10$iR48RoZ.W.Ri089sxf2m.uer7WMeLb6t2wms6FjKdolrFAprgrQ/u', 1)
INSERT [dbo].[Login]
    ([id], [firstName], [lastName], [email], [dateCreated], [emailConfirmed], [isAdmin], [passwordHash], [isSecurityAdmin])
VALUES
    (66, N'Chuck', N'Darragh', N'charlesdarragh@dispostable.com', CAST(N'2020-04-01T22:20:37.2900000' AS DateTime2), 0, 0, N'$2b$10$FFB5a1JlnZN5pIPeCLdHGuFi.27BqOg4PqKQ1gmvxY9VV0d9j7CK6', 0)

SET IDENTITY_INSERT [dbo].[Login] OFF
GO



